import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ready_voyage/model/prefrences.dart';
import 'package:ready_voyage/urls.dart';

import 'globals.dart' as globals;
import 'model/recommendations.dart';
import 'model/trip.dart';
import 'model/user.dart';

createaccount(String fname, String lname, String email, String user_name,
    String password, String birthdate, String gender) async {
  String theUrl = "${Urls.URL_PREFIX}/app/users/";
  var response = await http.post(Uri.parse(theUrl), headers: {
    "Accept": "application/json"
  }, body: {
    'first_name': fname,
    'last_name': lname,
    'email': email,
    'username': user_name,
    'password': password,
    'date_of_birth': birthdate,
    'gender': gender,
  });
  var res = json.decode(response.body);
  Map<String, dynamic> map = {};
  if (res['response'] == null) {
    res.forEach((k, v) =>
        {map[k] = v.toString().replaceAll(RegExp('[^A-Za-z0-9 ]'), '')});
  } else {
    User user = User.fromJson(res['user']);
    user.user_token = res['token'];
    if (user is User) {
      globals.userstorage.setItem('current_user', user);
      globals.userstorage.setItem('current_user_token', user.token);
    }
    map['response'] = res['response'];
  }
  return map;
}

bool is_user_loggedin() {
  if (globals.userstorage.getItem('current_user') != null) {
    return true;
  } else {
    return false;
  }
}

get_current_user() {
  if (is_user_loggedin() == false) {
    return;
  }
  var data = globals.userstorage.getItem('current_user');
  User current_user = User(
      id: data['id'],
      first_name: data['first_name'].toString(),
      last_name: data['last_name'].toString(),
      email: data['email'].toString(),
      username: data['username'].toString(),
      birth_date: data['date_of_birth'].toString(),
      gender: data['gender'].toString(),
      date_created: data['date_created'].toString(),
      photo: data['photo'].toString());
  current_user.user_token =
      globals.userstorage.getItem('current_user_token').toString();
  return current_user;
}

logout() async {
  if (is_user_loggedin()) {
    User user = get_current_user();
    String theUrl = "${Urls.URL_PREFIX}/app/user_logout/";
    var response = await http.get(Uri.parse(theUrl), headers: {
      'Authorization': 'Token ${user.token}',
    });
    if (response != null) {
      await globals.userstorage.clear();
    }
    return true;
  } else {
    return false;
  }
}

login(String username, String password) async {
  String theUrl = "${Urls.URL_PREFIX}/app/user_login/";
  var response = await http.post(Uri.parse(theUrl),
      headers: {"Accept": "application/json"},
      body: {'username/email': username, 'password': password});
  final body = json.decode(response.body);
  Map<String, dynamic> map = {};
  if (body['Error'] == null) {
    final data = body['data'];
    map['data'] = data['message'];
    User user = User.fromJson(data['user']);
    user.user_token = body['token'];
    if (user is User) {
      if (is_user_loggedin() == true) {
        logout();
      }
      globals.userstorage.setItem('current_user', user);
      globals.userstorage.setItem('current_user_token', user.token);
    }
  } else {
    map['error'] = body['Error'];
  }
  return map;
}

update_user(User user) async {
  String theUrl = "${Urls.URL_PREFIX}/app/users/${user.id}/";
  var new_user = await http.put(Uri.parse(theUrl), body: {
    'first_name': user.first_name,
    'last_name': user.last_name,
    'email': user.email,
    'username': user.username,
    'date_of_birth': user.birth_date,
    'gender': user.gender,
  });
  var res = json.decode(new_user.body);
  User updated_user = User.fromJson(res);
  if (updated_user is User) {
    globals.userstorage.setItem('current_user', updated_user);
    return true;
  } else {
    return false;
  }
}

update_user_image(User user, List<int> bytes, String image_name) async {
  String theUrl = "${Urls.URL_PREFIX}/app/users/${user.id}/";
  var request = http.MultipartRequest('PUT', Uri.parse(theUrl));
  request.files
      .add(http.MultipartFile.fromBytes('photo', bytes, filename: image_name));
  var res = await request.send();
  if (res.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

create_trip_from_prefrences(Prefrences pref, User user) async {
  String theUrl = "${Urls.URL_PREFIX}/app/preferences/${user.id}/";
  var trip_response = await http.post(Uri.parse(theUrl), headers: {
    "Accept": "application/json"
  }, body: {
    "user_id": "${user.id}",
    "budget": pref.budget,
    "max_duration": pref.numberofDays,
    "starting_city": pref.destination,
    "preferences": '''{
      'AmusementParks': ${pref.rating_amusement_parks},
      'Aquarium': ${pref.rating_aquarium},
      'Museums': ${pref.rating_museums},
      'Bar': ${pref.rating_bar},
      'NightClubs': ${pref.rating_nightclubs},
      'Casino': ${pref.rating_casino},
      'ReligousLocations': ${pref.rating_religousLocations},
      'Cafe': ${pref.rating_cafe},
      'Mall': ${pref.rating_mall},
      'Restaurant': ${pref.rating_restaurant},
      'TouristicPlaces': ${pref.rating_touristicPlaces},
      'Stadium': ${pref.rating_stadium},
      'GreenAreas': ${pref.rating_greenAreas},
      'Zoo': ${pref.rating_zoo},
    }''',
  });
  // var trip_response = await http.post(Uri.parse(theUrl),
  //     headers: {"Accept": "application/json"},
  //     body: jsonEncode(pref.toJson(user)));
  print(json.decode(trip_response.body));
  // Trip temp = Trip.fromJson(json.decode(trip_response.body));
  // print(temp);
}

createTrip(Prefrences pref, User user) async {
  // print("Here in create Trip\n");
  // print(jsonEncode(pref.toJson(user)));
  //print("---------------------");
  String theUrl = "${Urls.URL_PREFIX}/app/preferences/${user.id}/";
  var trip_response = await http.post(Uri.parse(theUrl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: jsonEncode(pref.toJson(user)));
  var body = json.decode(trip_response.body);
  // print(trip_response.body);
  print(json.decode(trip_response.body)['trip']);
  print(json.decode(trip_response.body)['city']);
  print(json.decode(trip_response.body)['numDays']);
  print(json.decode(trip_response.body)['hotel']);
  Trip temp = Trip.fromJson(body);
  // print(temp.mHotel.keys);
  // print(temp.mStartCity);
  // print(temp.mTrip.keys);
  return temp;
}


Future<List<Trip>> getTopRated() async{
  String theUrl = "${Urls.URL_PREFIX}/app/top_rated/";
  var trip_response = await http.get(Uri.parse(theUrl));
  List<Trip> top_rated = [];
  var top_response = json.decode(trip_response.body)['top_rated'];
  print(trip_response.body);
  for(var i=0; i < top_response.length; i++)
    {
      Trip temp = Trip.fromJson(top_response[i]);
      top_rated.add(temp);
      print(temp);
      if(globals.user_top_rated_trips.length < 3)
        {
          globals.user_top_rated_trips.add(temp);
        }


    }
  return top_rated;

}
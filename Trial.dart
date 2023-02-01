import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ready_voyage/Trips/tripprogram/Thetrip.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';
import 'package:ready_voyage/Widgets/mid-text2.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../Widgets/Back.dart';
import '../../Widgets/Destination.dart';
import '../../Widgets/Numbersfield.dart';
import '../../Widgets/Rating1.dart';
import '../../Widgets/Submit.dart';
import '../../Widgets/icon-font.dart';
import '../../functions.dart';
import '../../model/prefrences.dart';
import '../../model/trip.dart';

class Customize extends StatefulWidget {
  const Customize({Key? key}) : super(key: key);

  @override
  State<Customize> createState() => _CustomizeState();
}

class _CustomizeState extends State<Customize> {
  int rating1 = 0;
  int rating2 = 0;
  int rating3 = 0;
  int rating4 = 0;
  int rating5 = 0;
  int rating6 = 0;
  int rating7 = 0;
  int rating8 = 0;
  int rating9 = 0;
  int rating10 = 0;
  int rating11 = 0;
  int rating12 = 0;
  int rating13 = 0;
  int rating14 = 0;
  String countryValue_dest = '';
  String stateValue_dest = '';
  String cityValue_dest = '';

  TextEditingController numberofDays = TextEditingController();
  TextEditingController budget = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (is_user_loggedin() == false) {
      Future.delayed(Duration.zero, () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Programpage(
                currentIndex: 2,
              );
            },
          ),
        );
      });
    }

    var screenSizes = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var hr = h / 753.5999755859375;
    // User currentUser = get_current_user();
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: IntrinsicHeight(
              child: Stack(children: <Widget>[
                /*Flexible(
                fit: FlexFit.loose,
                child: Container(
                  width: screenSizes.width,
                  child: Image.asset("img/customize.png", fit: BoxFit.cover),
                )),
            Flexible(
                fit: FlexFit.loose,
                child: Container(
                  margin: EdgeInsets.only(top: h, left: 0, right: 0),
                  width: screenSizes.width,
                  child:
                      Image.asset("img/Customizeflipped.png", fit: BoxFit.fill),
                )),*/
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/w.png"), fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Container(
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Backhome(
                                                Page: Programpage(currentIndex: 0),
                                              )
                                            ])
                                          ])),
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        iconfont(
                                          text: "Ready Voyage",
                                          color: Colors.black,
                                          size: 40,
                                        )
                                      ]),
                                ]),
                          )),
                      Container(
                          child: Container(
                              margin: EdgeInsets.only(top: 10, left: 20, right: 0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: w - 30,
                                        child: Container(
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  headertext(
                                                    text: "Customize your trip ",
                                                    size: 50,
                                                  ),
                                                  SizedBox(height: 20 / hr),
                                                  midtext2(
                                                    text:
                                                    " Want a perfect trip? We got you.\n But first, we need to know more about you.",
                                                    color: Colors.black,
                                                    size: 20,
                                                  ),
                                                  SizedBox(height: 10 / hr),
                                                ]))),
                                  ]))),
                      Container(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                                width: screenSizes.width,
                                margin: EdgeInsets.only(top: 20, left: 20, right: 0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            // SizedBox(
                                            //   height: 10/hr,
                                            // ),
                                            Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  midtext(
                                                    text: "Destination",
                                                    size: 20,
                                                    color: Colors.black,
                                                  ),
                                                  Destination(
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 20),
                                                        child: Column(
                                                          children: [
                                                            SelectState(
                                                              onCountryChanged: (value) {
                                                                setState(() {
                                                                  countryValue_dest =
                                                                      value.replaceAll(
                                                                          RegExp(
                                                                              '[^A-Za-z]'),
                                                                          '');
                                                                });
                                                              },
                                                              onStateChanged: (value) {
                                                                setState(() {
                                                                  stateValue_dest = value;
                                                                });
                                                              },
                                                              onCityChanged: (value) {
                                                                setState(() {
                                                                  cityValue_dest = value;
                                                                });
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                  SizedBox(
                                                    height: 10 / hr,
                                                  ),
                                                  midtext(
                                                    text: "Number of days",
                                                    size: 20,
                                                    color: Colors.black,
                                                  ),
                                                  Num(
                                                    child: TextField(
                                                      cursorColor: Colors.black45,
                                                      controller: numberofDays,
                                                      textAlign: TextAlign.start,
                                                      decoration: const InputDecoration(
                                                        border: InputBorder.none,
                                                        focusedBorder:
                                                        UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.black),
                                                        ),
                                                        icon: Icon(
                                                          Icons.calendar_today,
                                                          color: Colors.black,
                                                        ),
                                                        hintText: "Range from 0 to 30",
                                                      ),
                                                      keyboardType:
                                                      TextInputType.number,
                                                      inputFormatters: <
                                                          TextInputFormatter>[
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ], // Only numbers can be entered
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10 / hr,
                                                  ),
                                                  midtext(
                                                    text: "Budget",
                                                    size: 20,
                                                    color: Colors.black,
                                                  ),
                                                  Num(
                                                    child: TextField(
                                                      cursorColor: Colors.black45,
                                                      textAlign: TextAlign.start,
                                                      controller: budget,
                                                      decoration: const InputDecoration(
                                                        border: InputBorder.none,
                                                        focusedBorder:
                                                        UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.black),
                                                        ),
                                                        icon: Icon(
                                                          Icons.monetization_on,
                                                          color: Colors.black,
                                                        ),
                                                        hintText:
                                                        "Insert budget in EGP",
                                                      ),
                                                      keyboardType:
                                                      TextInputType.number,
                                                      inputFormatters: <
                                                          TextInputFormatter>[
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ], // Only numbers can be entered
                                                    ),
                                                  ),
                                                ]),
                                          ])
                                    ])),
                          )),
                      Container(
                          child: Container(
                              margin: EdgeInsets.only(top: 40, left: 30, right: 0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: w - 70,
                                        child: Container(
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  headertext(
                                                    text: "Preferences",
                                                  ),
                                                  SizedBox(height: 10),
                                                  midtext2(
                                                    text:
                                                    "Please rate the following interests,for 1 being the lowest and 5 being the highest.",
                                                    color: Colors.black,
                                                    size: 25,
                                                  ),
                                                ]))),
                                  ]))),
                      Container(
                          child: Container(
                              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              child: ResponsiveRowColumn(
                                  rowMainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  // rowPadding: const EdgeInsets.all(20),
                                  // columnPadding: const EdgeInsets.all(20),
                                  layout: ResponsiveWrapper.of(context)
                                      .isSmallerThan("TEMP")
                                      ? ResponsiveRowColumnType.COLUMN
                                      : ResponsiveRowColumnType.ROW,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: Container(
                                            child: Container(
                                              child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            child: midtext2(
                                                              text: "Amusement Parks:",
                                                              size: 18,
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20,
                                                          // ),
                                                          StarRating(
                                                            rating: rating1,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating1 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 25 / hr,
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          midtext2(
                                                            text: "Aquariums:",
                                                            size: 20,
                                                            color: Colors.black,
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20/wr,
                                                          // ),
                                                          StarRating(
                                                            rating: rating2,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating2 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 25 / hr,
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          midtext2(
                                                            text: "Museums:",
                                                            size: 20,
                                                            color: Colors.black,
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20/wr,
                                                          // ),
                                                          StarRating(
                                                            rating: rating3,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating3 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 25 / hr,
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          midtext2(
                                                            text: "Bars:",
                                                            size: 20,
                                                            color: Colors.black,
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20/wr,
                                                          // ),
                                                          StarRating(
                                                            rating: rating4,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating4 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 25 / hr,
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          midtext2(
                                                            text: "Night Clubs:",
                                                            size: 20,
                                                            color: Colors.black,
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20/wr,
                                                          // ),
                                                          StarRating(
                                                            rating: rating5,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating5 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 25 / hr,
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          midtext2(
                                                            text: "Casinos:",
                                                            size: 20,
                                                            color: Colors.black,
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20/wr,
                                                          // ),
                                                          StarRating(
                                                            rating: rating6,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating6 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 25 / hr,
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        children: [
                                                          midtext2(
                                                            text: "Religious tourism:",
                                                            size: 18,
                                                            color: Colors.black,
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20/wr,
                                                          // ),
                                                          StarRating(
                                                            rating: rating7,
                                                            onRatingChanged: (rating) =>
                                                                setState(() => rating7 =
                                                                rating as int),
                                                            color: Colors.yellow,
                                                          )
                                                        ]),
                                                    SizedBox(
                                                      height: 30 / hr,
                                                    ),
                                                  ]),
                                            ))),
                                    const ResponsiveRowColumnItem(

                                      child: SizedBox(
                                        width: 80,
                                      ),
                                    ),
                                    ResponsiveRowColumnItem(

                                        child: Container(
                                            child: Container(
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Cafe:",
                                                              size: 20,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating8,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating8 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                        height: 25 / hr,
                                                      ),
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Mall:",
                                                              size: 20,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating9,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating9 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                        height: 25 / hr,
                                                      ),
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Restaurant:",
                                                              size: 20,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating10,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating10 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                        height: 25 / hr,
                                                      ),
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Zoo:",
                                                              size: 20,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating11,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating11 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                        height: 25 / hr,
                                                      ),
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Touristic Places:",
                                                              size: 18,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating12,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating12 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                        height: 25 / hr,
                                                      ),
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Stadium:",
                                                              size: 20,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating13,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating13 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                        height: 25 / hr,
                                                      ),
                                                      Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            midtext2(
                                                              text: "Green areas:",
                                                              size: 18,
                                                              color: Colors.black,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 20/wr,
                                                            // ),
                                                            StarRating(
                                                              rating: rating14,
                                                              onRatingChanged: (rating) =>
                                                                  setState(() => rating14 =
                                                                  rating as int),
                                                              color: Colors.yellow,
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                          child: Column(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment.start,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                              children: [
                                                                SizedBox(
                                                                  height: 50 / hr,
                                                                ),
                                                              ])),
                                                    ])))),
                                  ]))),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Submit(
                          text: "Submit",
                          press: () async {
                            var sum_rating = rating1 +
                                rating2 +
                                rating3 +
                                rating4 +
                                rating5 +
                                rating6 +
                                rating7 +
                                rating8 +
                                rating9 +
                                rating10 +
                                rating11 +
                                rating12 +
                                rating13 +
                                rating14;
                            if (countryValue_dest.isNotEmpty &&
                                stateValue_dest.isNotEmpty &&
                                budget.text.isNotEmpty &&
                                numberofDays.text.isNotEmpty &&
                                sum_rating > 0) {
                              String dest = '';
                              if (cityValue_dest.isNotEmpty) {
                                dest = cityValue_dest;
                              } else {
                                dest = "${stateValue_dest}, ${countryValue_dest}";
                              }
                              // dest = 'Milan';
                              Prefrences pref = Prefrences(
                                  destination: dest,
                                  numberofDays: numberofDays.text,
                                  budget: budget.text,
                                  rating_amusement_parks: rating1 * 2,
                                  rating_aquarium: rating2 * 2,
                                  rating_museums: rating3 * 2,
                                  rating_bar: rating4 * 2,
                                  rating_nightclubs: rating5 * 2,
                                  rating_casino: rating6 * 2,
                                  rating_religousLocations: rating7 * 2,
                                  rating_cafe: rating8 * 2,
                                  rating_mall: rating9 * 2,
                                  rating_restaurant: rating10 * 2,
                                  rating_zoo: rating11 * 2,
                                  rating_touristicPlaces: rating12 * 2,
                                  rating_stadium: rating13 * 2,
                                  rating_greenAreas: rating14 * 2);
                              _showLoaderDialog(context);
                              var res = await createTrip(pref, get_current_user());
                              if (res is Trip) {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Display(
                                        trip: res,
                                      );
                                    },
                                  ),
                                );
                              }
                           else{
                             _showErrorDialog(context);
                             }

                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ]))),
    );
  }
  void _showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(margin: EdgeInsets.only(left: 7),child:Text("Loading..." )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }
  void _showErrorDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
        title: Text("preferences error"),
    backgroundColor: Colors.white,

    content:  Text('Please fill in all the preferences section'),
    actions: <Widget>[
    TextButton(
    onPressed: () => Navigator.pop(context, 'Cancel'),
    child: const Text('Cancel'),
    ),
    TextButton(
    onPressed: () => Navigator.pop(context, 'OK'),
    child: const Text('OK'),
    ),
    ],
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }
}

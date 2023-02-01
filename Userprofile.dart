import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../Widgets/icon-font.dart';
import '../../functions.dart';
import '../../model/user.dart';
import 'EditProfile.dart';
import '../../Widgets/ayad-text.dart';
import '../../Widgets/ayad-text2.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  State<user> createState() => _userState();

}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    if (is_user_loggedin() == false) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Programpage(
              currentIndex: 0,
            );
          },
        ),
      );
    }
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var w = queryData.size.width;
    var h = queryData.size.height;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    var tr = queryData.textScaleFactor;
    var pr = queryData.devicePixelRatio;

    User current_user = get_current_user();
    var current_user_photo;
    if (current_user.photo == 'null') {
      current_user_photo = AssetImage('img/Try.png');
    } else {
      current_user_photo = NetworkImage(current_user.photo);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/Editprofile.png"), fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: IntrinsicHeight(
                  child: Stack(children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blueGrey),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Editprofile();
                                      },
                                    ),
                                  );
                                },
                                child: Text("Edit Profile",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15))),
                            headertext(
                              text: "${current_user.username}",
                              color: Colors.black,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blueGrey),
                                onPressed: () async {
                                  var response = await logout();
                                  // setState(() {
                                  if (response == true) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Programpage(
                                            currentIndex: 0,
                                          );
                                        },
                                      ),
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Programpage(
                                            currentIndex: 0,
                                          );
                                        },
                                      ),
                                    );
                                  }
                                  // });
                                },
                                child: Text("LOG OUT",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)))
                          ],
                        ),
                      ),
                      Container(
                          width: w,
                          child: Column(children: [
                            Column(children: <Widget>[
                              Divider(
                                color: Colors.black87,
                                thickness: 2,
                              )
                            ]),
                          ])),
                      Container(
                        child: ResponsiveRowColumn(
                            rowMainAxisAlignment: MainAxisAlignment.start,
                            columnMainAxisAlignment: MainAxisAlignment.center,
                            columnCrossAxisAlignment: CrossAxisAlignment.start,
                            rowPadding: const EdgeInsets.all(5),
                            columnPadding: const EdgeInsets.all(10),
                            layout: ResponsiveWrapper.of(context)
                                    .isSmallerThan(DESKTOP)
                                ? ResponsiveRowColumnType.COLUMN
                                : ResponsiveRowColumnType.ROW,
                            children: [
                              ResponsiveRowColumnItem(
                                child: Container(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10, left: 15),
                                    child: CircleAvatar(
                                      backgroundImage: current_user_photo,
                                      radius: 130.0,
                                    ),
                                  ),
                                ),
                              ),
                              ResponsiveRowColumnItem(
                                  child: Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          headertext(
                                            text: "Name :",
                                            color: Colors.black87,
                                          ),
                                          headertext(
                                            text:
                                                " ${current_user.first_name} ${current_user.last_name}",
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          headertext(
                                            text: "Username :",
                                            color: Colors.black87,
                                          ),
                                          headertext(
                                            text: " ${current_user.username}",
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          headertext(
                                            text: "Email :",
                                            color: Colors.black87,
                                          ),
                                          headertext(
                                            text: " ${current_user.email}",
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          headertext(
                                            text: "Age :",
                                            color: Colors.black87,
                                          ),
                                          headertext(
                                            text:
                                                " ${AgeCalculator.age(DateTime.parse(current_user.birth_date)).years} Years",
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          headertext(
                                            text: "Gender :",
                                            color: Colors.black87,
                                          ),
                                          headertext(
                                            text:
                                                " ${(current_user.gender == "M") ? 'Male' : 'Female'}",
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                            ]),
                      ),
                      Container(
                          width: w,
                          child: Column(children: [
                            Column(children: <Widget>[
                              Divider(
                                color: Colors.black,
                                thickness: 2,
                              )
                            ]),
                          ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          headertext(
                            text: "Recommended Trips",
                            color: Colors.black,
                          ),
                        ],
                      ),
                      ResponsiveRowColumn(
                          rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          columnMainAxisAlignment: MainAxisAlignment.center,
                          columnCrossAxisAlignment: CrossAxisAlignment.start,
                          rowPadding: const EdgeInsets.all(20),
                          columnPadding: const EdgeInsets.all(10),
                          layout: ResponsiveWrapper.of(context)
                                  .isSmallerThan(TABLET)
                              ? ResponsiveRowColumnType.COLUMN
                              : ResponsiveRowColumnType.ROW,
                          children: [
                            ResponsiveRowColumnItem(
                              child: GestureDetector(
                                  onTap: () {
                                    print('Button tapped');
                                  },
                                  child: const CircleAvatar(
                                    radius: 70,
                                    backgroundColor: Colors.indigo,
                                    child: Text(
                                      'Trip 1',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  )),
                            ),
                            ResponsiveRowColumnItem(
                              child: GestureDetector(
                                  onTap: () {
                                    print('Button tapped');
                                  },
                                  child: const CircleAvatar(
                                    radius: 70,
                                    backgroundColor: Colors.indigo,
                                    child: Text(
                                      'Trip 2',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  )),
                            ),
                            ResponsiveRowColumnItem(
                              child: GestureDetector(
                                  onTap: () {
                                    print('Button tapped');
                                  },
                                  child: const CircleAvatar(
                                    radius: 70,
                                    backgroundColor: Colors.indigo,
                                    child: Text(
                                      'Trip 3',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  )),
                            )
                          ]),
                    ],
                  ),
                ),
              ])))),
    );
  }
}

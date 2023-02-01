import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/Trial.dart';
import 'package:ready_voyage/Widgets/Customizebutton.dart';
import 'package:ready_voyage/Widgets/header_text.dart';
import 'package:ready_voyage/Widgets/header_text2.dart';
import 'package:ready_voyage/Widgets/icon-font.dart';
import 'package:ready_voyage/Widgets/mid-text.dart';
import 'package:ready_voyage/Widgets/mid-text2.dart';
import 'package:ready_voyage/Widgets/mid-text3.dart';
import 'package:ready_voyage/functions.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../Widgets/Country.dart';
import '../Widgets/Customizetripbutton.dart';
import '../Widgets/footer_content.dart';
import '../model/trip.dart';
import 'package:ready_voyage/globals.dart' as globals;


class TripsPage extends StatefulWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {


  @override
  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
    var textfactor = MediaQuery.textScaleFactorOf(context);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    late List<Trip> top_rated_trips = [];


    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: IntrinsicHeight(
                  child: Stack(children: <Widget>[
                SizedBox(
                  width: screenSizes.width,
                  height: screenSizes.height,
                  child: Image.asset("img/Trippage1.png", fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.only(top: 700 / hr),
                  width: screenSizes.width,
                  height: screenSizes.height,
                  child:
                      Image.asset("img/Tripsbackground.png", fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20 / hr, left: 1000 / wr, right: 20 / wr),
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          iconfont(
                            text: "Ready Voyage",
                            size: 50,
                          )
                        ])
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: h * 0.15, left: 90, right: 20 / wr),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: w * 0.5,
                              height: h * 0.5,
                              child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      headertext2(
                                        text: "Trips",
                                        size: 60,
                                      ),
                                      midtext3(
                                        text: "What do you seek?",
                                        size: 35,
                                      ),
                                      SizedBox(height: 10 / hr),
                                      Container(
                                          // width: screenSizes.width,
                                          // height: screenSizes.height,
                                          child: midtext2(
                                        text:
                                            "Find the most convenient trip for you amongst our most significant trips.",
                                        size: 20,
                                      )),
                                      SizedBox(height: 30 / hr),
                                      Customi(
                                        text: 'Customize a trip',
                                        press: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return Customize();
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                      SizedBox(height: 30 / hr),
                                      Customized(text: 'Top rated',
                                        press: ()
                                        {

                                        },
                                      ),
                                    ],
                                  ))),
                        ])),
                Container(
                  margin: EdgeInsets.only(
                      top: 800 / hr, left: 20 / wr, right: 20 / wr),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          headertext2(
                              text: "Our top rated trips:",
                              textAlign: TextAlign.center),
                          SizedBox(
                            height: 90,
                          ),
                          ResponsiveRowColumn(
                              rowMainAxisAlignment: MainAxisAlignment.center,
                              rowPadding: const EdgeInsets.all(20),
                              columnPadding: const EdgeInsets.all(20),
                              layout: ResponsiveWrapper.of(context)
                                      .isSmallerThan(DESKTOP)
                                  ? ResponsiveRowColumnType.COLUMN
                                  : ResponsiveRowColumnType.ROW,
                              children: [
                                ResponsiveRowColumnItem(

                                  child:Container(),
                                  // Country(country_trip: globals.user_top_rated_trips.elementAt(0)),
                                ),
                                ResponsiveRowColumnItem(

                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),
                                ResponsiveRowColumnItem(

                                  child:Container()
                                  // Country(country_trip: globals.user_top_rated_trips.elementAt(1)),
                                ),
                                ResponsiveRowColumnItem(

                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),
                                ResponsiveRowColumnItem(

                                  child: Container(),
                                //  Country(country_trip: globals.user_top_rated_trips.elementAt(2)),
                                ),
                              ])
                        ],
                      )
                    ],
                  ),
                ),
              ])))),
    );
  }
}

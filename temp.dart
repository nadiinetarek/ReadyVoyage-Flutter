import 'package:accordion/accordion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/trips1.dart';
import 'package:ready_voyage/Widgets/header_text.dart';
import 'package:ready_voyage/Widgets/mid-text.dart';

import '../../Widgets/Aday.dart';
import '../../Widgets/Back.dart';
import '../../Widgets/footer_content.dart';
import '../../Widgets/icon-font.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
                child: Stack(children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 500),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Image.asset("img/Daydisplay.png", fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 1200, left: 0, right: 0),
                width: double.maxFinite,
                child:
                    Image.asset("img/footer-background.png", fit: BoxFit.cover),
              ),
              Container(
                child: Container(
                  height: 508,
                  margin: const EdgeInsets.only(top: 1450, left: 0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 0, left: 0, right: 0),
                                child: Footer_widget())
                          ])
                    ],
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 1920, left: 28, right: 20),
                  child: Column(
                      children: <Widget>[Divider(color: Colors.black54)])),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 1200, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            iconfont(
                              text: "Ready Voyage",
                              color: Colors.black,
                              size: 50,
                            )
                          ])
                    ]),
              ),
              Column(children: [
                Container(
                    margin: const EdgeInsets.only(top: 10, left: 40),
                    alignment: Alignment.center,
                    child: Row(children: [
                      Backhome(
                        Page: TripsPage(),
                      )
                    ])),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 120),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 350,
                          width: 1200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: Image.asset('img/try.png').image,
                                fit: BoxFit.fill,
                                opacity: 80,
                              )),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        headertext(
                          text: "Country",
                          size: 40,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: Image.asset('img/try.png').image,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              SizedBox(
                                width: 600,
                              ),
                              Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    Row(children: [
                                      headertext(
                                        text: "Name:",
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      midtext(
                                        text: "Hotel name",
                                        size: 15,
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 55,
                                    ),
                                    Row(children: [
                                      headertext(
                                        text: "Address:",
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      midtext(
                                        text: "Hotel adress",
                                        size: 15,
                                      )
                                    ]),
                                    SizedBox(
                                      height: 55,
                                    ),
                                    Row(children: [
                                      headertext(
                                        text: "Price:",
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      midtext(text: "N LE per night", size: 15)
                                    ]),
                                    SizedBox(
                                      height: 55,
                                    ),
                                    Row(children: [
                                      headertext(
                                        text: "Rating:",
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      midtext(text: "N stars", size: 15),
                                    ]),
                                  ]))
                            ],
                          ),
                        ]),
                        SizedBox(
                          height: 50,
                        ),
                        headertext(
                          text: "Days",
                          size: 40,
                        ),
                        Container(
                          height: 1000,
                          width: 610,
                          child: Accordion(
                              paddingBetweenOpenSections: 20,
                              paddingListBottom: 20,
                              paddingListHorizontal: 20,
                              paddingListTop: 20,
                              paddingBetweenClosedSections: 20,
                              contentBackgroundColor: Colors.white54,
                              headerBackgroundColor: Colors.black12,
                              headerBackgroundColorOpened: Colors.black26,
                              maxOpenSections: 1,
                              children: [
                                AccordionSection(
                                    isOpen: false,
                                    header: midtext(
                                        text: "Day 1", color: Colors.black),
                                    contentBackgroundColor: Colors.black12,
                                    contentBorderColor: Colors.black12,
                                    headerBackgroundColorOpened: Colors.black54,
                                    content: Container(child: Aday())),
                                AccordionSection(
                                    isOpen: false,
                                    header: midtext(
                                        text: "Day 2", color: Colors.black),
                                    contentBackgroundColor: Colors.black12,
                                    contentBorderColor: Colors.black12,
                                    headerBackgroundColorOpened: Colors.black54,
                                    content: Container(child: Aday())),
                                AccordionSection(
                                    isOpen: false,
                                    header: midtext(
                                        text: "Day 3", color: Colors.black),
                                    contentBackgroundColor: Colors.black12,
                                    contentBorderColor: Colors.black12,
                                    headerBackgroundColorOpened: Colors.black54,
                                    content: Container(child: Aday()))
                              ]),
                        ),
                      ]),
                ),
              ]),
            ]))));
  }
}

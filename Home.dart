import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';
import 'package:ready_voyage/Trips/trips1.dart';
import 'package:ready_voyage/Widgets/header_text2.dart';
import 'package:ready_voyage/Widgets/mid-text2.dart';
import 'package:ready_voyage/Widgets/mid-text3.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Widgets/footer_content.dart';
import '../../Widgets/header_text.dart';
import '../../Widgets/icon-font.dart';
import '../../Widgets/mid-text.dart';
import '../../globals.dart';
import 'LoginPage.dart';
import 'Trial.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var screenSizes = MediaQuery
        .of(context)
        .size;
    var textfactor = MediaQuery.textScaleFactorOf(context);
    var h = MediaQuery
        .of(context)
        .size
        .height;
    var w = MediaQuery
        .of(context)
        .size
        .width;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
              child: Stack(children: <Widget>[
                Container(
              child: Column(
                  children:[
                Container(
                  height: h,
                  width: w,
               decoration: BoxDecoration(
               image: DecorationImage(
             image: AssetImage("img/homepage.png"), fit: BoxFit.fill)),


                //   CarouselSlider(
                //     items: [
                //       Container(
                //         width: screenSizes.width,
                //         height: screenSizes.height,
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: Image
                //                 .asset('img/homepage.png')
                //                 .image,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: Image
                //                 .asset('img/homepage2.png')
                //                 .image,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: Image
                //                 .asset('img/homepage3.png')
                //                 .image,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: Image
                //                 .asset('img/homepage4.png')
                //                 .image,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: Image
                //                 .asset('img/homepage5.png')
                //                 .image,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: Image
                //                 .asset('img/homepage6.png')
                //                 .image,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //     ],
                //     options: CarouselOptions(
                //       height: h * 0.9,
                //       enlargeCenterPage: true,
                //       autoPlay: true,
                //       aspectRatio: 16 / 16,
                //       autoPlayCurve: Curves.fastOutSlowIn,
                //       enableInfiniteScroll: true,
                //       autoPlayAnimationDuration: Duration(milliseconds: 800),
                //       viewportFraction: 0.8,
                //     ),
                //   ),
                // ),

                  child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0.1*h,left: 0.03*w),
                        width: w -100,
                        child: Container(
                          child:
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    headertext2(
                                      text: 'Explore',
                                      color: Colors.black,
                                      size: 58 / textfactor,
                                    ),
                                    // SizedBox(
                                    //   height: 20.0/hr,
                                    // )
                                  ]),
                                  // ResponsiveRowColumn(
                                  //     columnMainAxisAlignment: MainAxisAlignment.start,
                                  //     columnCrossAxisAlignment: CrossAxisAlignment.start,
                                  //     rowMainAxisAlignment: MainAxisAlignment.start,
                                  //     rowCrossAxisAlignment: CrossAxisAlignment.start,
                                  //     rowPadding: const EdgeInsets.all(20),
                                  //     columnPadding: const EdgeInsets.all(20),
                                  //     layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                                  //         ? ResponsiveRowColumnType.COLUMN
                                  //
                                  //
                                  //       : ResponsiveRowColumnType.ROW,
                                  Container(
                                      // width: w * 0.5,
                                      // height: h * 0.15,
                                      child:

                                      Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,

                                          children: [
                                            midtext2(
                                              text: 'All the wonderful places around the globe ',
                                              size: 19 / textfactor,),

                                          ])),


                                  //     children : [
                                  //       ResponsiveRowColumnItem(
                                  //         rowFlex: 1,
                                  //         child: midtext2(
                                  //           text: 'All the wonderful places ',
                                  //           size: 28/textfactor,
                                  //         ),
                                  //       ),
                                  //       ResponsiveRowColumnItem(
                                  //         rowFlex: 1,
                                  //         child: midtext2(
                                  //           text: 'around the globe',
                                  //           size: 28/textfactor,
                                  //         ),
                                  //       ),
                                  //       ResponsiveRowColumnItem(
                                  //         rowFlex: 1,
                                  //         child: SizedBox(
                                  //           height: 10.0/hr,
                                  //         )
                                  //       ),
                                  // ]),
                                  Container(
                                      // width: w * 0.5,
                                      // height: h * 0.15,
                                      child:

                                      Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,

                                          children: [
                                            midtext2(
                                              text:
                                              'Plan your next vacation, find the perfect trip within the budget with ease, are you ready? ',
                                              size: 17 / textfactor,
                                            )
                                          ])),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: h * 0.15, left: 90),
                                      constraints: BoxConstraints.expand(
                                        width: screenSizes.width * 0.5,
                                        height: screenSizes.height * 0.08,
                                      ),
                                      child: Card(
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.black,
                                              width: 2,
                                              style: BorderStyle.solid),
                                          borderRadius: BorderRadius.circular(
                                              80),
                                        ),
                                        color: Colors.transparent,
                                        child: ListTile(
                                          leading: IconButton(
                                            color: Colors.black,
                                            icon: const Icon(
                                              Icons.search,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            tooltip: 'Search!',
                                            onPressed: () {
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
                                            },
                                          ),
                                          title: TextField(
                                            style: new TextStyle(fontSize: 20.0,
                                                color: Colors.black),
                                            decoration: const InputDecoration(
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                hintText: 'Where to...?',
                                                border: InputBorder.none,
                                                fillColor: Colors.white),
                                          ),
                                        ),
                                      )),
                                  //NEWWWW

                                  Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        ResponsiveRowColumn(
                                            rowMainAxisAlignment: MainAxisAlignment
                                                .center,
                                            rowPadding: const EdgeInsets.all(
                                                10),
                                            columnPadding: const EdgeInsets.all(
                                                10),
                                            layout: ResponsiveWrapper.of(
                                                context).isSmallerThan(DESKTOP)
                                                ? ResponsiveRowColumnType.COLUMN
                                                : ResponsiveRowColumnType.ROW,
                                            children: [
                                              ResponsiveRowColumnItem(
                                                rowFlex: 1,
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius
                                                        .circular(5),
                                                    child: TextButton(
                                                      style: flatButtonStyle,
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return TripsPage();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            top: 0,
                                                            left: 0,
                                                            right: 0),
                                                        width: screenSizes
                                                            .width * 0.35,
                                                        height: screenSizes
                                                            .height * 0.19,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                                children: [
                                                                  headertext(
                                                                    text: 'All trips ',
                                                                    size: 25,
                                                                  ),
                                                                  // SizedBox(
                                                                  //   width: 160,
                                                                  // ),
                                                                  Icon(
                                                                    FontAwesomeIcons
                                                                        .book,
                                                                    size: 25,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ]),
                                                            // SizedBox(
                                                            //   height: 8,
                                                            // ),
                                                            midtext(
                                                              text:
                                                              'Find your perfect trip amongst all trips available.',
                                                              size: 14,
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                              ResponsiveRowColumnItem(
                                                rowFlex: 1,
                                                child: SizedBox(
                                                  width: 130 / wr,
                                                ),
                                              ),

                                              ResponsiveRowColumnItem(
                                                rowFlex: 1,
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius
                                                        .circular(5),
                                                    child: TextButton(
                                                      style: flatButtonStyle,
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return Customize();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 0,
                                                            left: 0,
                                                            right: 0),
                                                        width: screenSizes
                                                            .width * 0.35,
                                                        height: screenSizes
                                                            .height * 0.19,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                                children: [
                                                                  headertext(
                                                                    text: 'Customize ',
                                                                    size: 20,
                                                                  ),
                                                                  // headertext(
                                                                  //   text: 'your trip',
                                                                  //   size: 20,
                                                                  // ),
                                                                  // SizedBox(
                                                                  //   width: 15,
                                                                  // ),
                                                                  Icon(
                                                                    FontAwesomeIcons
                                                                        .pencil,
                                                                    size: 15,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ]),
                                                            // SizedBox(
                                                            //   height: 8,
                                                            // ),
                                                            midtext(
                                                              text:
                                                              'Give us your preferences, we give you your trip.',
                                                              size: 14,
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),

                                              ),
                                              ResponsiveRowColumnItem(
                                                rowFlex: 1,
                                                child: SizedBox(
                                                  width: 130 / wr,
                                                ),
                                              ),


                                              ResponsiveRowColumnItem(
                                                rowFlex: 1,
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius
                                                        .circular(5),
                                                    child: TextButton(
                                                      style: flatButtonStyle,
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return LoginPage();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 0,
                                                            left: 0,
                                                            right: 0),
                                                        width: screenSizes
                                                            .width * 0.35,
                                                        height: screenSizes
                                                            .height * 0.19,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                                children: [
                                                                  headertext(
                                                                    text: 'Join us',
                                                                    size: 20,
                                                                  ),
                                                                  // headertext(
                                                                  //   text: 'your trip',
                                                                  //   size: 20,
                                                                  // ),
                                                                  // SizedBox(
                                                                  //   width: 15,
                                                                  // ),
                                                                  Icon(
                                                                    Icons
                                                                        .account_circle,
                                                                    size: 25,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ]),
                                                            // SizedBox(
                                                            //   height: 8,
                                                            // ),
                                                            midtext(
                                                              text:
                                                              'Create an account or login.',
                                                              size: 14,
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),

                                              ),

                                            ]),

                                      ]),
                                  ]),
                        ))])),
                                 Container(
                                   child:
                                   Column(
                                       children:[
                                         Container(
                                             child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   headertext2(
                                                     size: 50,
                                                     textAlign: TextAlign.center,
                                                     text: 'We are ready whenever you are.',
                                                     color: Colors.black,
                                                   ),
                                                 ])),
                                         SizedBox(
                                           height: 40/hr,
                                         ),
                                         Container(
                                           width: screenSizes.width ,
                                           child: Image.asset("img/Homepageicon.png",
                                               fit: BoxFit.cover),
                                         ),
                                         SizedBox(
                                           height: 40.0/hr,
                                         ),
                                         midtext3(
                                           size: 40/textfactor,
                                           textAlign: TextAlign.center,
                                           text: "Browse through our most significant destinations.",
                                           color: Colors.black,
                                         ),
                                         Container(
                                             child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   midtext3(
                                                     textAlign: TextAlign.center,
                                                     size: 40/textfactor,
                                                     text:
                                                     "We support our costumers by letting them customize\ntheir own convenient trip.",
                                                     color: Colors.black,
                                                   )
                                                 ])),
                                       ]
                                   )
                                 )
                                ]
                            ),

                        )

                  ],
                ))

              ),
            );

  }}

            //     child: Container(
            //   width: screenSizes.width ,
            //   height: screenSizes.height ,
            //   margin:  EdgeInsets.only(top: h*0.04, left: 0, right: 20),
            //   padding: EdgeInsets.all(70.0/hr),
            //   child: Flexible(
            //       flex:2,
            //       fit: FlexFit.tight,
            //       child: Container(

            //
            //   ),
            // )),
            //   Flexible(
            //       fit: FlexFit.loose,
            //       child:
            // )),
            //   Flexible(
            //       fit: FlexFit.loose,
            //       child:Container(
            //   width: screenSizes.width ,
            //   height: screenSizes.height ,
            //   margin:  EdgeInsets.only(top: h*0.72, left: 20/wr, right: 20/wr),
            //   child:

            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // )),
            //     Flexible(
            //         fit: FlexFit.loose,
            //         child:Container(
            //     width: screenSizes.width ,
            //     height: screenSizes.height,
            //     margin:  EdgeInsets.only(top: h*1.4, left: 0, right: 20*wr),
            //     child: Column(
            //       children: [

            //         SizedBox(
            //           height: 20/hr,
            //         ),
            //         // Container(
            //         //     child: const Divider(
            //         //   thickness: 5,
            //         //   // thickness of the line
            //         //   indent: 550,
            //         //   // empty space to the leading edge of divider.
            //         //   endIndent: 550,
            //         //   // empty space to the trailing edge of the divider.
            //         //   color: Colors.black,
            //         //   // The color to use when painting the line.
            //         //   height: 10, // The divider's height extent.
            //         // )),
            //       ],
            //     ))),
            // Container(
            //   margin:  EdgeInsets.only(top: screenSizes.height*0.025, left: screenSizes.width*0.15),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               iconfont(
            //                 text: "Ready Voyage",
            //                 color: Colors.black,
            //                 size: 50,
            //               )
            //             ])
            //       ]),
            // ),
            // Container(
            //   width: screenSizes.width ,
            //   height: screenSizes.height ,
            //   margin: const EdgeInsets.only(top: 1550, left: 0, right: 0),
            //
            //   child:
            //       Image.asset("img/footer-background.png", fit: BoxFit.cover),
            // ),
            // Container(
            //   child: Container(
            //     height: 508,
            //     margin: const EdgeInsets.only(top: 1800, left: 0, right: 20),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Column(
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                   width: screenSizes.width ,
            //                   height: screenSizes.height ,
            //                   margin: const EdgeInsets.only(
            //                       top: 0, left: 0, right: 0),
            //
            //                   child: Footer_widget())
            //             ])
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //     margin: const EdgeInsets.only(top: 2270, left: 28, right: 20),
            //     child:
            //         Column(children: <Widget>[Divider(color: Colors.black54)])),
          // ]
    //       )
    //   )
    // ),
    // );

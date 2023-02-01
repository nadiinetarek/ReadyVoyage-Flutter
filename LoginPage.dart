import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/Login.dart';
import 'package:ready_voyage/Trips/tripprogram/program2.dart';
import 'package:ready_voyage/Widgets/header_text.dart';

import '../../Widgets/Backbutton.dart';
import '../../Widgets/Loginbutton.dart';
import '../../Widgets/Signupbutton.dart';
import '../../Widgets/icon-font.dart';
import '../../globals.dart';
import 'Signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool logged = false;
  @override
  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
    var textfactor = MediaQuery.textScaleFactorOf(context);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
                child: Stack(
                children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/Loginpage1.png"), fit: BoxFit.fill)),
                  child: Column(
                      children: [
                  Container(
                  child: Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        Backhome(),

                      ])
                    ])),
                    SizedBox(
                      width: screenSizes.width*0.3,
                    ),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                     iconfont(
                      text: "Ready Voyage",
                      color: Colors.black,
                      size: 40,
                    ),
                       SizedBox(
                         height: screenSizes.height * 0.05,
                       ),
                       Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             headertext(
                               text: "Welcome Traveller",
                               size: 20,
                               color: Colors.black87,
                             )
                           ]),
                     ]),

                  Row(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: screenSizes.height * 0.8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: Colors.black87),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: TextButton(
                                        style: flatButtonStyle,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return Login();
                                              },
                                            ),
                                          );
                                        },
                                        child: headertext(
                                          text: 'LOGIN',
                                          size: 30,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: screenSizes.width * 0.1,
                                ),
                                Container(
                                  decoration: BoxDecoration(color: Colors.black87),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: TextButton(
                                        style: flatButtonStyle,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return Signup();
                                              },
                                            ),
                                          );
                                        },
                                        child: headertext(
                                          text: 'SIGN UP',
                                          size: 30,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )

                  ]),
                 )),
                  ]
                  )
                ),



                // FittedBox(
                //     fit: BoxFit.contain,
                //     child: Container(
                //       margin:
                //       const EdgeInsets.only(top: 80, left: 550, right: 20),
                //       child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //
                //           ]),
                //     )),
                //   Container(
                //
                //     child: Column(
                //
                //       children: [
                //         Row(
                //           // mainAxisAlignment: MainAxisAlignment.center,
                //           // crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //
                //                 signup(
                //                   text: 'LOGIN',
                //                   press: () {
                //                     Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                         builder: (context) {
                //                           return Login();
                //                         },
                //                       ),
                //                     );
                //                   },
                //                 ),
                //
                //           ],
                //         ),
                //         Row(
                //           // mainAxisAlignment: MainAxisAlignment.center,
                //           // crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //
                //                 login(
                //                     text: 'LOGIN',
                //                     press: () {
                //                       logged = true;
                //                       Navigator.push(
                //                         context,
                //                         MaterialPageRoute(
                //                           builder: (context) {
                //                             return Programpage2(
                //                               currentIndex: 0,
                //                             );
                //                           },
                //                         ),
                //                       );
                //                     }),
                //             ],
                //         )
                //       ],
                //     ),
                //   ),
                //   // FittedBox(
                //   //     fit: BoxFit.contain,
                //   //     child:),
              ],
            ))));
  }
}

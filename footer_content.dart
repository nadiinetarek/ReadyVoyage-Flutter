import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ready_voyage/Trips/tripprogram/Contactpage.dart';
import 'package:ready_voyage/Widgets/icon-font.dart';

class Footer_widget extends StatelessWidget {
  const Footer_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(top: 10, left: 0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: iconfont(
                          text: " Ready Voyage",
                          color: Colors.black54,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '  Contact us',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: '  Customer support',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ContactPage();
                                      },
                                    ),
                                  );
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: '  Feedback',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: Center(
                                        child: Card(
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                25.0), // half of height and width of Image
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.facebook,
                                              size: 20.0,
                                            ),
                                            color: Colors.black,
                                            onPressed: () {},
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: Center(
                                        child: Card(
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                25.0), // half of height and width of Image
                                          ),
                                          child: IconButton(
                                            icon: new Icon(
                                              FontAwesomeIcons.instagram,
                                              size: 20.0,
                                            ),
                                            color: Color(0xFF162A49),
                                            onPressed: () {},
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: Center(
                                        child: Card(
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                25.0), // half of height and width of Image
                                          ),
                                          child: IconButton(
                                            icon: new Icon(
                                              FontAwesomeIcons.twitter,
                                              size: 20.0,
                                            ),
                                            color: Color(0xFF162A49),
                                            onPressed: () {},
                                          ),
                                        ),
                                      )),
                                ],
                              )
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 122, left: 0, right: 20),
                        child: RichText(
                          text: TextSpan(
                              text: 'About us',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'About Ready Voyage',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'Our team',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 122, left: 0, right: 20),
                        child: RichText(
                          text: TextSpan(
                              text: 'Other services',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'Trips',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'Customize a trip',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'Hotels',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'Flights',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print(' Text Clicked');
                                }),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(top: 20, left: 150, right: 20),
                      child: Column(children: <Widget>[
                        Image.asset('img/footer-icon.png'),
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          margin: const EdgeInsets.only(top: 470, left: 28, right: 20),
          child: Column(children: <Widget>[Divider(color: Colors.black54)])),
      Container(
        margin: const EdgeInsets.only(top: 490, left: 100, right: 20),
        child: Row(children: [
          RichText(
            text: TextSpan(
                text: '  Privacy policy',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print(' Text Clicked');
                  }),
          ),
          SizedBox(
            width: 268,
          ),
          RichText(
            text: TextSpan(
                text: '  Terms of use',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print(' Text Clicked');
                  }),
          ),
          SizedBox(
            width: 295,
          ),
          Icon(
            FontAwesomeIcons.copyright,
            size: 10,
            color: Colors.black54,
          ),
          RichText(
            text: TextSpan(
                text: '   ReadyVoyage group. All rights reserved ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print(' Text Clicked');
                  }),
          ),
        ]),
      ),
    ]);
  }
}

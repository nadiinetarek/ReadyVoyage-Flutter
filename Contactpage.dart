import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Widgets/header_text2.dart';
import 'package:ready_voyage/Widgets/mid-text2.dart';
import 'package:ready_voyage/Widgets/mid-text3.dart';
import '../../Widgets/Contaclcall.dart';
import '../../Widgets/ContactEmail.dart';
import '../../Widgets/footer_content.dart';
import '../../Widgets/header_text.dart';
import '../../Widgets/icon-font.dart';
import '../../Widgets/mid-text.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
    var textfactor = MediaQuery.textScaleFactorOf(context);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/Contactbackground.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: IntrinsicHeight(
                  child: Stack(children: <Widget>[
                FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 1200, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  iconfont(
                                    text: "Ready Voyage",
                                    size: 50,
                                  )
                                ])
                          ]),
                    )),
                Container(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    margin: EdgeInsets.only(top: 80, left: 90, right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: headertext2(
                                      text: "Get in touch",
                                      size: 70,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 700,
                                    child: midtext3(
                                      text:
                                          " Want to get in touch? We'd love \n to hear from you. \n Here's how you can reach us...",
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Contactmailbutton(
                                    text: 'E-mail us',
                                    press: () {},
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Contactcallbutton(
                                    text: 'Talk to us',
                                    press: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                              child: Column(children: <Widget>[
                            Divider(color: Colors.black54)
                          ])),
                        ]),
                  ),
                )),
              ])))),
    );
  }
}

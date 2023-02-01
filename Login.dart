import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';
import 'package:ready_voyage/Widgets/E-mailLoginField.dart';
import 'package:ready_voyage/Widgets/Loginbuttonin.dart';

import '../../Widgets/Backbutton.dart';
import '../../Widgets/Loginbuttonin2.dart';
import '../../Widgets/Password.dart';
import '../../Widgets/footer_content.dart';
import '../../Widgets/header_text.dart';
import '../../Widgets/icon-font.dart';
import '../../Widgets/mid-text.dart';
import '../../functions.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  String form_message = '';

  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
    TextEditingController user_name = TextEditingController();
    TextEditingController password = TextEditingController();
    var textfactor = MediaQuery.textScaleFactorOf(context);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    return Scaffold(
        body:

        // body: ModalProgressHUD(
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
                child: Stack(children: <Widget>[
                Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("img/Signup1.png"), fit: BoxFit.fill)),
        child: Column(
            children: [
              Container(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Backhome(),

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
                  margin: EdgeInsets.only(top: 0.03*h, left: 20, right: 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                     Container(
                      width: w - 30,
                      child: Container(
                          child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            headertext(
                              text: "Login",
                              size: 54,
                            ),
                            midtext(
                              text: "Sign in your account",
                              color: Colors.black,
                            ),
                            SizedBox(height: 50/hr),
                            midtext(
                              text: "  E-mail",
                              size: 16,
                              color: Colors.black,
                            ),
                            Email(
                              child: TextField(
                                controller: user_name,
                                cursorColor: Colors.black45,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    icon: Icon(
                                      Icons.mail,
                                      color: Colors.black,
                                    ),
                                    hintText: "User@email.com"),
                              ),
                            ),
                            SizedBox(height: 20),
                            midtext(
                              text: "  Password",
                              size: 16,
                              color: Colors.black,
                            ),
                            Password(
                              onChange: (text) {},
                              pass_controller: password,
                            ),
                            SizedBox(
                              height: 15,
                              child: (form_message.isNotEmpty)
                                  ? Text(form_message)
                                  : null,
                            ),
                            loginb(
                                text: "LOGIN",
                                press: () async {
                                  _showLoaderDialog(context);
                                  var response = await login(
                                      user_name.text, password.text);
                                  setState(() {
                                    if (response['error'] != null) {
                                      form_message = response['error'];
                                    }
                                    if (response['data'] != null) {
                                      form_message = response['data'];
                                      Navigator.pop(context);
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
                                  });
                                }),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 20, left: 25, right: 20),
                              child: Image.asset("img/OrLogin.png",
                                  fit: BoxFit.cover),
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 10, left: 80, right: 0),
                                child: Column(children: [
                                  Row(children: [
                                    midtext(
                                      text: "Not a user?",
                                      size: 20,
                                      color: Colors.black87,
                                    ),
                                    Backtosignin()
                                  ])
                                ])),
                          ],
                        ),
                      )),
                      ]),
                ),
              ),
              // Container(
              //   height: 750,
              //   margin: const EdgeInsets.only(top: 600, left: 0, right: 0),
              //   width: double.maxFinite,
              //   child:
              //       Image.asset("img/footer-background.png", fit: BoxFit.cover),
              // ),
              // Container(
              //   child: Container(
              //     height: 508,
              //     margin: const EdgeInsets.only(top: 800, left: 0, right: 20),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               Container(
              //                   margin: const EdgeInsets.only(
              //                       top: 0, left: 0, right: 0),
              //                   child: Footer_widget())
              //             ])
              //       ],
              //     ),
              //   ),
              // ),
              // Container(
              //     margin: const EdgeInsets.only(
              //         top: 10, left: 10, right: 0, bottom: 90),
              //     child: Column(children: [
              //       Row(children: [Backhome()])
              //     ])),
            ]))]))));
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
}

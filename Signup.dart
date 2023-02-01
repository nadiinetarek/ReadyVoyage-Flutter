import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:intl/intl.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';
import 'package:ready_voyage/Widgets/Birthdayfield.dart';
import 'package:ready_voyage/Widgets/Name.dart';
import 'package:ready_voyage/Widgets/Usernamefield.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../Widgets/Backbutton.dart';
import '../../Widgets/E-mailLoginField.dart';
import '../../Widgets/Password.dart';
import '../../Widgets/Signupbuttonin.dart';
import '../../Widgets/footer_content.dart';
import '../../Widgets/header_text.dart';
import '../../Widgets/icon-font.dart';
import '../../Widgets/mid-text.dart';
import '../../Widgets/mid-text2.dart';
import '../../functions.dart';
import '../../validation.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  String first_name_message = '';
  String last_name_message = '';
  String user_name_message = '';
  String email_message = '';
  String password_message = '';
  String Birthday_message = '';
  String Birthmonth_message = '';
  String Birthyear_message = '';
  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController user_name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController birthmonth = TextEditingController();
  TextEditingController birthyear = TextEditingController();
  TextEditingController password = TextEditingController();
  String gender = 'M';
  bool _signedup = false;

  // void _signup() {
  //
  //   setState(() {
  //     _signedup = true;
  //   });
  //
  //   //Simulate a service call
  //   new Future.delayed(new Duration(seconds: 4), () {
  //     setState(() {
  //       _signedup = false;
  //     });
  //   });
  // }

  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
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
      child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Container(
      width: w - 30,
      child: Container(
      child: Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
      headertext(
      text: "Join us ",
      size: 50,
      ),
      SizedBox(height: 20 / hr),
      midtext2(
      text:
      " Create an account",
      color: Colors.black,
      size: 20,
      ),
      SizedBox(height: 10 / hr),
      Container(
      child: Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
      midtext(
      text: "  Name",
      size: 16,
      color: Colors.black,
      ),
      ResponsiveRowColumn(
      rowMainAxisAlignment:
      MainAxisAlignment.start,
      rowCrossAxisAlignment:
      CrossAxisAlignment.start,
      // rowPadding: const EdgeInsets.all(5),
      // columnPadding: const EdgeInsets.all(5),
      layout: ResponsiveWrapper.of(
      context)
          .isSmallerThan(DESKTOP)
      ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      children: [
      ResponsiveRowColumnItem(
      rowFlex: 1,
      child:
      // Column(
      //     children: [
      Name(
      child: TextField(
      controller: first_name,
      cursorColor:
      Colors.black45,
      decoration:
      InputDecoration(
      errorText: first_name_message
          .isNotEmpty
      ? first_name_message
          : null,
      border:
      InputBorder
          .none,
      focusedBorder:
      UnderlineInputBorder(
      borderSide: BorderSide(
      color: Colors
          .black),
      ),
      icon: Icon(
      Icons.person,
      color: Colors
          .black,
      ),
      hintText:
      "First Name",
      hintStyle:
      TextStyle(
      fontSize:
      ResponsiveValue(
      context,
      defaultValue:
      15.0,
      valueWhen: const [
      Condition
          .smallerThan(
      name:
      MOBILE,
      value:
      10.0,
      ),
      Condition
          .largerThan(
      name:
      TABLET,
      value:
      20.0,
      )
      ],
      ).value,
      )),
      ),
      )),
      ResponsiveRowColumnItem(
      rowFlex: 1,
      child: SizedBox(
      width: 4,
      )),
      ResponsiveRowColumnItem(
      rowFlex: 1,
      child: Name(
      child: TextField(
      controller: last_name,
      cursorColor:
      Colors.black45,
      decoration:
      InputDecoration(
      errorText: last_name_message
          .isNotEmpty
      ? last_name_message
          : null,
      border:
      InputBorder
          .none,
      focusedBorder:
      UnderlineInputBorder(
      borderSide: BorderSide(
      color: Colors
          .black),
      ),
      icon: Icon(
      Icons.person,
      color: Colors
          .black,
      ),
      hintText:
      "Last Name",
      hintStyle:
      TextStyle(
      fontSize:
      ResponsiveValue(
      context,
      defaultValue:
      15.0,
      valueWhen: const [
      Condition
          .smallerThan(
      name:
      MOBILE,
      value:
      10.0,
      ),
      Condition
          .largerThan(
      name:
      TABLET,
      value:
      20.0,
      )
      ],
      ).value,
      )),
      ),
      )),
      ])
      // ])
      ])),
      Container(
      child:
      Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Container(
      child:
      Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
      Row(
      children: [
      midtext(
      text: "  Username",
      size: 16,
      color: Colors.black,
      ),
      ],
      ),
      Row(
      children: [
      username(
      child: TextField(
      controller: user_name,
      cursorColor: Colors.black45,
      decoration: InputDecoration(
      errorText: user_name_message.isNotEmpty
      ? user_name_message
          : null,
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
      borderSide:
      BorderSide(color: Colors.black),
      ),
      icon: Icon(
      Icons.person_rounded,
      color: Colors.black,
      ),
      hintText: "Admin123",
      hintStyle: TextStyle(
      fontSize: ResponsiveValue(
      context,
      defaultValue: 15.0,
      valueWhen: const [
      Condition.smallerThan(
      name: MOBILE,
      value: 10.0,
      ),
      Condition.largerThan(
      name: TABLET,
      value: 20.0,
      )
      ],
      ).value,
      )),
      )),
      ],
      ),
      ],
      )),
      ],
      ),
      ),
      Container(
      child:Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      midtext(
      text: "  E-mail",
      size: 16,
      color: Colors.black,
      ),
      ],
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Email(
      child: TextField(
      controller: email,
      cursorColor: Colors.black45,
      decoration: InputDecoration(
      errorText: email_message.isNotEmpty
      ? email_message
          : null,
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
      borderSide:
      BorderSide(color: Colors.black),
      ),
      icon: Icon(
      Icons.mail,
      color: Colors.black,
      ),
      hintText: "User@email.com",
      hintStyle: TextStyle(
      fontSize: ResponsiveValue(
      context,
      defaultValue: 15.0,
      valueWhen: const [
      Condition.smallerThan(
      name: MOBILE,
      value: 10.0,
      ),
      Condition.largerThan(
      name: TABLET,
      value: 20.0,
      )
      ],
      ).value,
      )),
      ),
      ),
      ],
      ),
      ],
      ),
      ],
      ),
      ),
      Container(
      child:Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      midtext(
      text: "  Password",
      size: 16,
      color: Colors.black,
      ),
      Password(
      onChange: (text) {},
      pass_controller: password,
      error_message: password_message.isNotEmpty
      ? password_message
          : null),
      midtext(
      text: "  Birthday",
      size: 16,
      color: Colors.black,
      ),
      ],
      ),
      ],
      ),
      ),
      ResponsiveRowColumn(
      rowMainAxisAlignment:
      MainAxisAlignment.start,
      rowPadding: const EdgeInsets.all(5),
      columnPadding: const EdgeInsets.all(5),
      layout: ResponsiveWrapper.of(context)
          .isSmallerThan(DESKTOP)
      ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      children: [
      ResponsiveRowColumnItem(
      rowFlex: 1,
      child: Birthday(
      child: TextField(
      controller: birthday,
      cursorColor: Colors.black45,
      keyboardType:
      TextInputType.number,
      inputFormatters: <
      TextInputFormatter>[
      FilteringTextInputFormatter
          .digitsOnly
      ],
      decoration: InputDecoration(
      errorText: Birthday_message
          .isNotEmpty
      ? Birthday_message
          : null,
      border: InputBorder.none,
      focusedBorder:
      UnderlineInputBorder(
      borderSide: BorderSide(
      color: Colors.black),
      ),
      hintText: "Day"),
      ),
      )),
      //     ResponsiveRowColumnItem(
      //         rowFlex: 1,
      //         child:SizedBox(
      //   width: 0.5,
      // )),
      ResponsiveRowColumnItem(
      rowFlex: 1,
      child: Birthday(
      child: TextField(
      controller: birthmonth,
      cursorColor: Colors.black45,
      keyboardType:
      TextInputType.number,
      inputFormatters: <
      TextInputFormatter>[
      FilteringTextInputFormatter
          .digitsOnly
      ],
      decoration: InputDecoration(
      errorText:
      Birthmonth_message
          .isNotEmpty
      ? Birthmonth_message
          : null,
      border: InputBorder.none,
      focusedBorder:
      UnderlineInputBorder(
      borderSide: BorderSide(
      color: Colors.black),
      ),
      hintText: "Month"),
      ),
      )),
      //     ResponsiveRowColumnItem(
      //         rowFlex: 1,
      //         child:SizedBox(
      //   width: 0.5,
      // )),
      ResponsiveRowColumnItem(
      rowFlex: 1,
      child: Birthday(
      child: TextField(
      controller: birthyear,
      cursorColor: Colors.black45,
      keyboardType:
      TextInputType.number,
      inputFormatters: <
      TextInputFormatter>[
      FilteringTextInputFormatter
          .digitsOnly
      ],
      decoration: InputDecoration(
      errorText: Birthyear_message
          .isNotEmpty
      ? Birthyear_message
          : null,
      border: InputBorder.none,
      focusedBorder:
      UnderlineInputBorder(
      borderSide: BorderSide(
      color: Colors.black),
      ),
      hintText: "Year"),
      ),
      )),
      ]),
      Container(
      child:
      Row(children: [
      Column(children: [
      Container(
      // margin:  EdgeInsets.symmetric(vertical: 5),
      //padding:  EdgeInsets.symmetric(
      //     horizontal: 14, vertical: 5),
      width: screenSizes.width *0.5,
      height: screenSizes.height * 0.06,
      decoration: BoxDecoration(
      border: Border.all(
      color: Colors.black, width: 2),
      color: Colors.white,
      borderRadius:
      BorderRadius.circular(10),
      ),
      child: DropDown<String>(
      items: <String>["M", "F"],
      icon: Icon(
      Icons.expand_more,
      color: Colors.blue,
      ),
      customWidgets: <Widget>[
      Row(
      children: <Widget>[
      Text("Male"),
      ],
      ),
      Row(
      children: <Widget>[
      Text("Female"),
      ],
      ),
      ],
      hint: Text("Select Gender"),
      onChanged: (gen) {
      gender = gen.toString();
      },
      initialValue: 'M',
      ),
      ),
      Signupbuttonin(
      text: "Sign up",
      press: () async {
      // _signup();
      bool have_date = true;
      setState(() {
      if (email.text.isEmpty) {
      email_message =
      'Field is Required';
      } else {
      email_message =
      emailvalidation(email.text);
      }
      if (first_name.text.isEmpty) {
      first_name_message =
      'Field is Required';
      } else {
      first_name_message = '';
      }
      if (last_name.text.isEmpty) {
      last_name_message =
      'Field is Required';
      } else {
      last_name_message = '';
      }
      if (user_name.text.isEmpty) {
      user_name_message =
      'Field is Required';
      } else {
      user_name_message = '';
      }
      if (password.text.isEmpty) {
      password_message =
      'Field is Required';
      } else {
      password_message =
      password_validation(
      password.text);
      }
      if (birthday.text.isEmpty) {
      Birthday_message =
      'Field is Required';
      have_date = false;
      } else {
      Birthday_message = '';
      }
      if (birthmonth.text.isEmpty) {
      Birthmonth_message =
      'Field is Required';
      have_date = false;
      } else {
      Birthmonth_message = '';
      }
      if (birthyear.text.isEmpty) {
      Birthyear_message =
      'Field is Required';
      have_date = false;
      } else {
      Birthyear_message = '';
      }
      if (have_date == true) {
      var map = is_date_valid(
      int.parse(birthday.text),
      int.parse(birthmonth.text),
      int.parse(birthyear.text));
      if (map['day'] != null) {
      Birthday_message = map['day'];
      }
      if (map['month'] != null) {
      Birthmonth_message =
      map['month'];
      }
      if (map['year'] != null) {
      Birthyear_message =
      map['year'];
      }
      }
      });
      if (user_name_message.isEmpty &&
      first_name_message.isEmpty &&
      last_name_message.isEmpty &&
      email_message.isEmpty &&
      password_message.isEmpty &&
      Birthday_message.isEmpty &&
      Birthmonth_message.isEmpty &&
      Birthyear_message.isEmpty) {
      final DateFormat formatter =
      DateFormat('yyyy-MM-dd');
      DateTime bdate = DateTime(
      int.parse(birthyear.text),
      int.parse(birthmonth.text),
      int.parse(birthday.text));
      final String formatted_date =
      formatter.format(bdate);
      _showLoaderDialog(context);

      var response =
      await createaccount(
      first_name.text,
      last_name.text,
      email.text,
      user_name.text,
      password.text,
      formatted_date.toString(),
      gender);
      setState(() {
      if (response['first_name'] !=
      null) {
      first_name_message =
      response['first_name'];
      }
      if (response['last_name'] !=
      null) {
      last_name_message =
      response['last_name'];
      }
      if (response['username'] !=
      null) {
      user_name_message =
      response['username'];
      }
      if (response['email'] != null) {
      email_message =
      response['email'];
      }
      if (response['password'] !=
      null) {
      password_message =
      response['password'];
      }
      if (response['response'] !=
      null) {
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
      }
      }),
      ])
      ]),
      )

      ]))),
      ]))),
      ]))])
      ),
      // SizedBox(height: 2),




      ),
    // ],
        // inAsyncCall: _signedup),
    );}
    // FittedBox(
    //     fit: BoxFit.contain,
    //     child: Container(
    //       margin:
    //           const EdgeInsets.only(top: 20, left: 1200, right: 20),
    //       child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   iconfont(
    //                     text: "Ready Voyage",
    //                     size: 50,
    //                   )
    //                 ])
    //           ]),
    //     )),
    // Flexible(
    //     fit: FlexFit.loose,
    //     child: Container(
    //       height: screenSizes.height,
    //       margin: const EdgeInsets.only(top: 20, left: 90, right: 20),
    //       child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Flexible(
    //                 fit: FlexFit.loose,
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     headertext(
    //                       text: "Join us",
    //                       size: 54,
    //                     ),
    //                     midtext(text: "Create an account"),
    //                     SizedBox(height: 10),
    //
    //
    //                   ],
    //                 )),
    //           ]),
    //     )),
    // Container(
    //     margin: const EdgeInsets.only(
    //         top: 10, left: 10, right: 0, bottom: 90),
    //     child: Column(children: [
    //       Row(children: [Backhome()])
    //     ])),
    // Container(
    //   height: 750,
    //   margin: const EdgeInsets.only(top: 600, left: 0, right: 0),
    //   width: screenSizes.width,
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
    //     margin: const EdgeInsets.only(top: 1270, left: 28, right: 20),
    //     child: Column(
    //         children: <Widget>[Divider)
    //
    //
    //
    //


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

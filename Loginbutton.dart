import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Trips/tripprogram/Login.dart';
import '../globals.dart';
import 'header_text.dart';

class login extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const login(
      {Key? key,
      required this.text,
      required this.press,
      this.color = Colors.black87,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FittedBox(
        fit: BoxFit.fill,
        child: Container(
          //margin:  EdgeInsets.only(top: size.height*0.68, left: size.width*0.2, right: size.width*0.04),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
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
                              size: 40,
                              color: Colors.white,
                            )),
                      )
                    ])
              ]),
        ));
  }
}

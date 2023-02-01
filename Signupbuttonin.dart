import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';
import 'header_text.dart';

class Signupbuttonin extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  Signupbuttonin(
      {Key? key,
      required this.text,
      required this.press,
      this.color = Colors.black87,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.fill,
        child: Container(
          decoration: BoxDecoration(color: Colors.black87),
          height: 60,
          margin: const EdgeInsets.only(top: 10, left: 0, right: 20),
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
                            onPressed: press,
                            child: headertext(
                              text: text,
                              size: 30,
                              color: Colors.white,
                            )),
                      )
                    ])
              ]),
        ));
  }
}

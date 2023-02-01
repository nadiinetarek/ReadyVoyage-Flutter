import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';
import 'header_text.dart';

class Submit extends StatelessWidget {
  final String text;
  VoidCallback press;
  final Color color, textColor;

  Submit(
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextButton(
                        style: flatButtonStyle,
                        onPressed: press,
                        child: headertext(
                          text: 'Submit',
                          size: 25,
                          color: Colors.white,
                        )),
                  )
                ])
          ]),
        ));
  }
}

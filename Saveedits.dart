import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';
import '../../Widgets/ayad-text.dart';

class Save extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const Save(
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
          margin: EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Background color
                        ),
                        onPressed: press,
                        child: headertext(
                          text: text,
                          size: 25,
                          color: Colors.white,
                        )),
                  )
                ])
          ]),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/program2.dart';
import 'package:ready_voyage/globals.dart';

import 'header_text.dart';

class maps extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const maps(
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
                            onPressed: () {},
                            child: Row(children: [
                              Icon(
                                Icons.map_outlined,
                                color: Colors.black87,
                                size: 20,
                              ),
                              headertext(
                                text: 'Open in maps',
                                color: Colors.black87,
                                size: 15,
                              ),
                            ])),
                      )
                    ])
              ]),
        ));
  }
}

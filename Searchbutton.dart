import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';

import '../globals.dart';
import 'header_text.dart';

class search extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const search(
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
          margin: const EdgeInsets.only(top: 650, left: 180, right: 20),
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
                                    return Programpage(currentIndex: 1);
                                  },
                                ),
                              );
                            },
                            child: headertext(
                              text: 'SEARCH',
                              size: 40,
                              color: Colors.white,
                            )),
                      )
                    ])
              ]),
        ));
  }
}

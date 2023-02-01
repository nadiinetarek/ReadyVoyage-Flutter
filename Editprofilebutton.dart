import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/EditProfile.dart';
import 'package:ready_voyage/Widgets/header_text.dart';
import 'package:ready_voyage/Widgets/header_text2.dart';

import '../globals.dart';

class Edit extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const Edit(
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Editprofile();
                                  },
                                ),
                              );
                            },
                            child: headertext2(
                              text: 'Edit profile',
                              size: 30,
                              color: Colors.white,
                            )),
                      )
                    ])
              ]),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Widgets/mid-text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../globals.dart';
import 'header_text.dart';

class Contactmailbutton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const Contactmailbutton(
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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextButton(
                      style: flatButtonStyle,
                      onPressed: () async {
                        const url = 'mailto:Admin@readyvoyage.net';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.email, size: 70, color: Colors.black),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    headertext(
                                      text: 'E-mail us',
                                      size: 25,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    midtext(
                                      text: "Admin@readyvoyage.net",
                                      size: 20,
                                      color: Colors.black,
                                    )
                                  ])
                            ]),
                      ),
                    ),
                  )
                ])
          ]),
        ));
  }
}

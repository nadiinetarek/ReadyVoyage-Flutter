import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gotomaps.dart';
import 'header_text.dart';
import 'mid-text.dart';

class Aday extends StatefulWidget {
  const Aday({Key? key}) : super(key: key);

  @override
  State<Aday> createState() => _AdayState();
}

class _AdayState extends State<Aday> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 240,
                height: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/Try.png"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              SizedBox(
                width: 80,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    headertext(
                      text: "Name:",
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    midtext(text: "Activity 1",size: 15,),
                  ]),
                  SizedBox(
                    height: 18,
                  ),
                  Row(children: [
                    headertext(
                      text: "Price:",
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    midtext(text: "N LE",size: 15,),
                  ]),
                  SizedBox(
                    height: 18,
                  ),
                  maps(
                    press: () {},
                    text: 'Open in maps',
                  ),
                ],
              )
            ]),
        SizedBox(
          height: 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 240,
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/Try.png"), fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  headertext(
                    text: "Name:",
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  midtext(text: "Activity 2",size: 15,),
                ]),
                SizedBox(
                  height: 18,
                ),
                Row(children: [
                  headertext(
                    text: "Price:",
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  midtext(text: "N LE",size: 15,),
                ]),
                SizedBox(
                  height: 18,
                ),
                maps(
                  press: () {},
                  text: 'Open in maps',
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 240,
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/Try.png"), fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  headertext(
                    text: "Name:",
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  midtext(text: "Activity 3",size: 15,),
                ]),
                SizedBox(
                  height: 18,
                ),
                Row(children: [
                  headertext(
                    text: "Price:",
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  midtext(text: "N LE",size: 15,),
                ]),
                SizedBox(
                  height: 18,
                ),
                maps(
                  press: () {},
                  text: 'Open in maps',
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
            children: <Widget>[Divider(color: Colors.black,thickness: 2,)]),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 240,
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/Try.png"), fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  headertext(
                    text: "Name:",
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  midtext(text: "Restaurant",size: 15,),
                ]),
                SizedBox(
                  height: 18,
                ),
                Row(children: [
                  headertext(
                    text: "Price:",
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  midtext(text: "N LE",size: 15,),
                ]),
                SizedBox(
                  height: 18,
                ),
                maps(
                  press: () {},
                  text: 'Open in maps',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

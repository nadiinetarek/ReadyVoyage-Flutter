import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/functions.dart';

import '../Trips/tripprogram/Trial.dart';
import '../globals.dart' as globals;
import '../model/trip.dart';
import 'package:ready_voyage/globals.dart';
import 'header_text.dart';

class Customized extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const Customized(
      {Key? key,
        required this.text,
        required this.press,
        this.color = Colors.black87,
        this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //late  Future<List<Trip>> top_rated_trips ;

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
                        onPressed: () {
                          List<Trip> top_rated_trips =getTopRated() as List<Trip>;
                          print(top_rated_trips[0]);
                          for(var i=0; i<top_rated_trips.length;i++)
                          {
                            //print(top_rated_trips);
                            Trip temp= globals.user_top_rated_trips[i];

                          }
                        },
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

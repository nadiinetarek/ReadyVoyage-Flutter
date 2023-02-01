import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/Thetrip.dart';
import 'package:ready_voyage/Widgets/icontrip.dart';
import 'package:ready_voyage/model/trip.dart';

class Country extends StatelessWidget {

  final Trip country_trip ;

   Country( {Key? key, required this.country_trip}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    return Stack(children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("img/Tripdis.png", fit: BoxFit.cover),
        ],
      ),
      Container(
          margin: const EdgeInsets.only(top: 22, left: 20),
           width: size.width*.8,
           height: size.height*0.8,
           decoration: BoxDecoration(
                   image: DecorationImage(
               image: NetworkImage(country_trip.mCityPic), fit: BoxFit.cover,
             ),
             ), ),
      Container(
        margin: const EdgeInsets.only(top: 130, left: 280),
        child: Tripicon(),
      ),
      Container(
          width: 350,
          height: 400,
          alignment: Alignment.center,
          child: RichText(
              text: TextSpan(
            text:
                'Countryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy',
            style: const TextStyle(
              fontFamily: "GlacialIndifference",
              color: Colors.transparent,
              fontSize: 40,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //var res;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Display(
                        trip: country_trip,
                      );
                    },
                  ),
                );
              },
          ))),
    ]);
  }
}

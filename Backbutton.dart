import 'package:flutter/material.dart';
import '../Trips/tripprogram/LoginPage.dart';
import '../Trips/tripprogram/program.dart';


class Backhome extends StatefulWidget {
  const Backhome({Key? key}) : super(key: key);

  @override
  State<Backhome> createState() => _Backhome();
}

class _Backhome extends State<Backhome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children:
    <Widget>[
      SizedBox(
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_circle_left_rounded,
              size: 40,
            ),
            tooltip: 'Home page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Programpage(currentIndex: 2,);
                  },
                ),
              );
            },
          ))
    ]);
  }
}

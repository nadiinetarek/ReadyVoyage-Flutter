import 'package:flutter/cupertino.dart';

class Tripicon extends StatelessWidget {
  List<String> assets = [
    "img/Tripdisicon.png",
    "img/Tripdisicon2.png",
    "img/Tripdisicon3.png",
    "img/Tripdisicon4.png",
    "img/Tripdisicon5.png",
    "img/Tripdisicon6.png",
    "img/Tripdisicon7.png",
    "img/Tripdisicon8.png",
    "img/Tripdisicon9.png",
  ];
  late String imagePath;
  @override
  Widget build(BuildContext context) {
    assets.shuffle(); //shuffle over here
    imagePath = assets[0]; //store random image over here
    return Container(
      child: Image.asset(imagePath), //show random image
    );
  }
}

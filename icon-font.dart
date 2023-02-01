import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iconfont extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  iconfont ({Key? Key,
    this.size=20,
    required this.text,
    this.color=Colors.black,}) : super(key: Key);

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Moontime",
        color:color,
        fontSize: size,
      ),
    );

  }
}

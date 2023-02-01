import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class headertext extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;
  headertext(
      {Key? Key,
      this.textAlign,
      this.size = 50,
      required this.text,
      this.color = Colors.black})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    var er = ResponsiveValue(
      context,
      defaultValue: 30.0,
      valueWhen: const [
        Condition.smallerThan(
          name: TABLET,
          value: 20.0,
        ),
        Condition.largerThan(name: TABLET, value: 39.0)
      ],
    ).value;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: "GlacialIndifference",
          color: color,
          fontSize: er,
          fontWeight: FontWeight.bold),
    );
  }
}

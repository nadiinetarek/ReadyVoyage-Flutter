import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class midtext3 extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;

  midtext3({
    Key? Key,
    this.textAlign,
    this.size = 30,
    required this.text,
    this.color = Colors.black54,
  }) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.clip,
      style: TextStyle(
        fontFamily: "GlacialIndifference",
        color: color,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 30.0,
          valueWhen: const [
            Condition.smallerThan(
              name: MOBILE,
              value: 15.0,
            ),
            Condition.largerThan(
              name: TABLET,
              value: 27.0,
            )
          ],
        ).value,
      ),
    );
  }
}
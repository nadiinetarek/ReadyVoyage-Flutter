import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

//used for small text inside boxes
class midtext extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;

  midtext({
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
      style: TextStyle(
        fontFamily: "GlacialIndifference",
        color: color,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 13.0,
          valueWhen: const [
            Condition.smallerThan(
              name: MOBILE,
              value: 11.0,
            ),
            Condition.largerThan(
              name: TABLET,
              value: 18.0,
            )
          ],
        ).value,
      ),
    );
  }
}

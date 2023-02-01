import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class midtext2 extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;

  midtext2({
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
      maxLines: 4,
      style: TextStyle(
        fontFamily: "GlacialIndifference",
        color: color,
        fontSize: ResponsiveValue(
          context,
          defaultValue: size,
          valueWhen: const [
            Condition.smallerThan(
              name: MOBILE,
              value: 10.0,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class headertext extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;
  headertext ({Key? Key,
    this.textAlign,
    this.size=50,
    required this.text,
    this.color=Colors.black}) : super(key: Key);

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.clip,
      style: TextStyle(
        fontFamily: "GlacialIndifference",
        color:color,
        fontSize: ResponsiveValue(
          context,
          defaultValue: size,
          valueWhen: const [
            Condition.smallerThan(
              name: MOBILE,
              value: 13.0,
            ),
            Condition.largerThan(
              name: TABLET,
              value: 18.0,
            )
          ],
        ).value,
        fontWeight: FontWeight.bold
    ),
    );

  }
}

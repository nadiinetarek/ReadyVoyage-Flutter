import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Birthday extends StatelessWidget {
  final Widget child;
  const Birthday({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Container(
        margin: EdgeInsets.symmetric(vertical:10 ),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        width: 118,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      );
  }
}

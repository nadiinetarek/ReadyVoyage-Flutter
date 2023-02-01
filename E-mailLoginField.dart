import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  final Widget child;
  const Email({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Container(
        margin: EdgeInsets.symmetric(vertical:3 ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        width: size.width*0.35,
        height: size.height*0.055,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      );
  }
}

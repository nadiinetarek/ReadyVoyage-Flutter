
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class recommended3 extends StatelessWidget {
  bool? isResponsive;
  double? width;
  double? height;
  recommended3( {Key? key, this.width ,this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack (
      children:[
        Container(
          width: width,
          height:height,
          decoration: BoxDecoration(
          ),
          child: Row(
            children: [
              Image.asset("img/recommended3.png"),

            ],
          ),
        )
      ],
    );
  }
}
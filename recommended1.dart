
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class recommended1 extends StatelessWidget {
  bool? isResponsive;
  double? width;
  double? height;
  recommended1( {Key? key, this.width ,this.isResponsive=false}) : super(key: key);

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
              Image.asset("img/recommended1.png"),

            ],
          ),
        )
      ],
    );
  }
}
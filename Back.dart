import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Backhome extends StatelessWidget {
  final Page;
  Backhome({
    Key? key,
    required this.Page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_circle_left_rounded,
              size: 40,
            ),
            tooltip: 'Home page',
            onPressed: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return (Page);
                  },
                ),
              );*/
              Navigator.pop(context);
            },
          ))
        ]);
  }
}

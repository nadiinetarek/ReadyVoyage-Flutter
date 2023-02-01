import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/Signup.dart';

class Backtosignin extends StatelessWidget {
  const Backtosignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          'SIGN UP',
          style: TextStyle(
            fontFamily: "GlacialIndifference",
            fontSize: 20,
            decoration: TextDecoration.underline,
            color: Colors.black87,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Signup();
              },
            ),
          );
        },
      ),
    );
  }
}

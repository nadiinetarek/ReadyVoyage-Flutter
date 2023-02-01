import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/tripprogram/Login.dart';

class Backtologin extends StatefulWidget {
  const Backtologin({Key? key}) : super(key: key);

  @override
  State<Backtologin> createState() => _Backtologin();
}

class _Backtologin extends State<Backtologin> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: TextButton(
              child: const Text(
                'LOGIN',
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
                      return const Login();
                    },
                  ),
                );
              },
            ),
          )
        ]);
  }
}

import 'package:flutter/material.dart';

import '../../Trips/trips1.dart';
import '../../functions.dart';
import 'Aboutus.dart';
import 'Contactpage.dart';
import 'Home.dart';
import 'LoginPage.dart';
import 'Userprofile.dart';

class Programpage extends StatefulWidget {
  final int currentIndex;
  Programpage({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<Programpage> createState() => _ProgrampageState();
}

class _ProgrampageState extends State<Programpage> {
  List BarPages = [
    Homepage(),
    TripsPage(),
    (is_user_loggedin() == true) ? user() : LoginPage(),
    ContactPage(),
    About()
  ];
  int currentIndex = 0;
  bool flag = true;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List BarPages = [
      Homepage(),
      TripsPage(),
      (is_user_loggedin() == true) ? user() : LoginPage(),
      ContactPage(),
      About()
    ];
    if (flag == true) {
      currentIndex = widget.currentIndex;
      flag = false;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: BarPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                label: "Trips", icon: Icon(Icons.travel_explore)),
            (is_user_loggedin() == true)
                ? BottomNavigationBarItem(
                    label: "User", icon: Icon(Icons.account_circle))
                : BottomNavigationBarItem(
                    label: "Login", icon: Icon(Icons.login)),
            BottomNavigationBarItem(
                label: "Contact us", icon: Icon(Icons.phone)),
            BottomNavigationBarItem(
                label: "About us", icon: Icon(Icons.info_rounded)),
          ]),
    );
  }
}

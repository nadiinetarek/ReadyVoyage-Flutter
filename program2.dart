import 'package:flutter/material.dart';

import '../../Trips/trips1.dart';
import 'Aboutus.dart';
import 'Contactpage.dart';
import 'Home.dart';
import 'Userprofile.dart';

class Programpage2 extends StatefulWidget {
  final int currentIndex;
  const Programpage2({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<Programpage2> createState() => _Programpage2State();
}

class _Programpage2State extends State<Programpage2> {
  List BarPages = [Homepage(), TripsPage(), user(), ContactPage(), About()];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            BottomNavigationBarItem(
                label: "User", icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(
                label: "Contact us", icon: Icon(Icons.phone)),
            BottomNavigationBarItem(
                label: "About us", icon: Icon(Icons.info_rounded)),
          ]),
    );
  }
}

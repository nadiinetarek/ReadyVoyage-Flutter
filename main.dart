import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Trips/tripprogram/program.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(context, child!),
                //maxWidth: 1500,
                minWidth: 450,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(350, name: MOBILE),
                  //const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  const ResponsiveBreakpoint.autoScale(600, name: TABLET),
                  const ResponsiveBreakpoint.resize(900, name: DESKTOP),
                  const ResponsiveBreakpoint.resize(1100, name: "TEMP"),

                  const ResponsiveBreakpoint.autoScale(1700, name: "4K"),
                ]),
        title: 'Ready Voyage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: Programpage( currentIndex: 1, ));
        home: Programpage(
          currentIndex: 0,
        ));
  }
}

library my_prj.globals;

import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:ready_voyage/functions.dart';

import 'model/trip.dart';

final LocalStorage userstorage = new LocalStorage('current_user_storage');

ButtonStyle flatButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(vertical: 20, horizontal: 28.3)),
    textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white12)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        side: BorderSide(
            color: Colors.black12, width: 3, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5))));

late List<Trip> user_top_rated_trips =[];

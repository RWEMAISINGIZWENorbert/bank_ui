
import 'package:bank_ui/screens/account.dart';
import 'package:bank_ui/screens/cards.dart';
import 'package:bank_ui/screens/home.dart';
import 'package:bank_ui/screens/statistics.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static  List<Widget> screens = <Widget> [
      Home(),
      Statistics(),
      Cards(),
      Account(),
   ];
 
 static Widget displayScreen(int index) {
    return screens[index];
 }

}
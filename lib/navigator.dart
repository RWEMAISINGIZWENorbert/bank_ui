
import 'package:bank_ui/screens/account.dart';
import 'package:bank_ui/screens/cards.dart';
import 'package:bank_ui/screens/home.dart';
import 'package:bank_ui/screens/transactions.dart';
import 'package:flutter/material.dart';

class Navigator {
   List<Widget> screens = <Widget> [
      Home(),
      Transactions(),
      Cards(),
      Account(),
   ];
 
 Widget displayScreen(int index) {
    return screens[index];
 }

}
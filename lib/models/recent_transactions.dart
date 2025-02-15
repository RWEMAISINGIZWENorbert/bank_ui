
import 'package:flutter/material.dart';

class RecentTransactions {
   final String name;
   final String date;
   final double money;
   final String category;
   final Icon icon;

   RecentTransactions({
    required this.name,
    required this.date,
    required this.money,
    required this.category,
    required this.icon
   });
   

  static List<RecentTransactions> transactions(){
     List<RecentTransactions> items = [];

     items.add(RecentTransactions(name: 'Netflix  subscri', date: 'June 20, 2024 at 1:50 Pm', money: 1150.000, category: 'Entartainment',icon: Icon(Icons.nature, color: Colors.white,)));
     items.add(RecentTransactions(name: 'Netflix  subscri', date: 'June 20, 2024 at 1:50 Pm', money: 1150.000, category: 'Entartainment', icon: Icon(Icons.nature, color: Colors.white,)));

     return items;
  }
    
}
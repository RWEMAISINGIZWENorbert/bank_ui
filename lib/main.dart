import 'package:bank_ui/models/latest_people.dart';
import 'package:bank_ui/models/recent_transactions.dart';
import 'package:bank_ui/screens/home.dart';
import 'package:bank_ui/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
         
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // color: Colors.grey[200],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      // const SizedBox(height: 14),
      body: Home(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

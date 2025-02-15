import 'package:bank_ui/navigator.dart';
import 'package:bank_ui/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

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

   int currentIndex = 0;

   void onItemTapped(int index){
      setState(() {
        currentIndex = index;
      });

   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      // const SizedBox(height: 14),
      body: AppNavigator.displayScreen(currentIndex),
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}

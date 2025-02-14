import 'package:flutter/material.dart';
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
      theme: ThemeData(
        primaryColor: Colors.grey[200],
      ),
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
      appBar: AppBar(
        elevation: 7,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ClipOval(
                  child: 
                  Image.asset(
                    'assets/im.jpg',
                    // fit: BoxFit.cover,
                    height: 36,
                    width: 36,
                    ),
                  ),
              ),
              // const SizedBox(width: 5,),
              Container(
                margin: EdgeInsets.only(left: 4),
                child: Text('good morning,\n Rwema Norbert')
                )
            ],
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(IconlyLight.notification, color: Colors.blueAccent,),
              ),
              const SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(IconlyLight.notification, color: Colors.blueAccent,),
              ),
            ],
          )
        ],
      ),
    );
  }
}

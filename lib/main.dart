import 'package:bank_ui/models/latest_people.dart';
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
         
    List<LatestPeople> myItems = LatestPeople.initLatestPeople(); 
    print(myItems.map((i) => i));   

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
 
     final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.9,
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
      // const SizedBox(height: 14),
      body: Column(
        children: [
          Container(
            height:  screenHeight / 5,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [
                   const Color.fromARGB(255, 12, 133, 231),
                   const Color.fromARGB(255, 3, 88, 128),  
                   const Color.fromARGB(255, 3, 58, 83),  
              ])
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                       children: [
                        Text('Your Balance'),
                        Text('12,333543454 frw')
                       ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 2,),
          Container(
            // margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight / 20,
                        padding: EdgeInsets.only(right: 42, left: 42),
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 12, 133, 231),
                            const Color.fromARGB(255, 4, 118, 172),  
                         ]),
                         borderRadius: BorderRadius.circular(8), 
                        ),
                        child: Icon(Icons.request_quote, color: Colors.white, size: 16,),
                      ),
                      Center(
                        child: Text('Request')
                        )
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight / 20,
                        padding: EdgeInsets.only(right: 42, left: 42),
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 2, 76, 136),
                             const Color.fromARGB(255, 4, 118, 172),  
                         ]),
                         borderRadius: BorderRadius.circular(8), 
                        ),
                        child: Icon(Icons.request_quote, color: Colors.white, size: 16,),
                      ),
                      Center(
                        child: Text('Request')
                        )
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight / 20,
                        padding: EdgeInsets.only(right: 42, left: 42),
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 12, 133, 231),
                            const Color.fromARGB(255, 4, 118, 172),  
                         ]),
                         borderRadius: BorderRadius.circular(8), 
                        ),
                        child: Icon(Icons.request_quote, color: Colors.white, size: 16,),
                      ),
                      Center(
                        child: Text('Request')
                        )
                    ],
                  ),
              ],
            ),     
          ),
          const SizedBox(height: 4,),
          Container(
            height: screenHeight / 14,
            margin: EdgeInsets.only(right: 20, left: 20, top: 10,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(
              // color: Colors.grey[100],
                color: Colors.white70, // Set the border color here
                width: 0.7,
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 6),
                      child: CircleAvatar(
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.inbox_outlined, color: Colors.white,),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8),
                          child: Text('Upgrade to plus +', style: GoogleFonts.poppins(
                             color: Colors.blue,
                             fontSize: 12,
                             fontWeight: FontWeight.w900   
                          ),
                          ),
                        ),
                        Text('Upgrade to plus +', style: GoogleFonts.poppins(
                           color: Colors.grey[700],
                           fontSize: 11,
                           fontWeight: FontWeight.w400   
                        ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Colors.grey[200]
                  ),
                  child: IconButton(
                              
                    onPressed: (){
                  
                  },
                   icon: Icon(IconlyLight.arrow_right_2, size: 24, color: Colors.blue,)),
                ),

              ],
            ),
          ),
          const SizedBox(height: 14,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text('Latest People', style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Text('See all', style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: myItems.length,
                itemBuilder: (context, index){

              })
            ],
          )
        ],
        ),
    );
  }
}

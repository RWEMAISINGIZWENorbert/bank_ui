import 'package:bank_ui/models/latest_people.dart';
import 'package:bank_ui/models/recent_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {    
     final double screenHeight = MediaQuery.of(context).size.height;
       List<LatestPeople> myItems = LatestPeople.initLatestPeople(); 
       List<RecentTransactions> items = RecentTransactions.transactions();

     return Scaffold(
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
      body: Column(
        children: [
          Container(
            height:  screenHeight / 5,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                       children: [
                        Text(
                          'Your Balance',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          ),
                        Text(
                          '12,3335,43454 frw',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          ),
                          )
                       ],
                    ),
                     SvgPicture.asset(
                      'assets/icon.svg', // Update the path to your SVG file
                      // height: 36,
                      width: 100,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                          Text(
                          'Credit card',
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        Text(
                          '*** *** *** 2004',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                          )
                      ],
                    ),
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
              const SizedBox(height: 8),
              Container(
                height: screenHeight / 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myItems.length,
                  itemBuilder: (context, index){
                    return Center(
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment,
                         children: [
                          ClipOval(
                            child: Container(
                              height: 36,
                              child: Image.asset(myItems[index].imgName)
                              ),
                          ),
                          const SizedBox(height: 4,),
                          Container(
                            margin: EdgeInsets.only(right: 8, left: 8, top: 5,  bottom: 5,),
                            child: Text(myItems[index].userName)
                            ),
                         ],
                      ),
                    );
                }
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 8, left: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Transactions', style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700
                    ),
                    ),
                    Text('see all', style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.w700
                    ),
                    ),
                  ],
                ),
                Container(
                  height: screenHeight / 4,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index){
                      return ListTile(
                         leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: items[index].icon,
                         ),
                         title: Text(items[index].name),
                         subtitle: Text(items[index].date),
                         trailing: Column(
                           children: [
                            Text('${items[index].money}', style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text(items[index].category, style: GoogleFonts.poppins(
                              color: Colors.grey[800],
                            ),
                            ),
                           ],
                         ),
                      );
                  }),
                )
              ],
            ),
          ),  
        ],
        ),
    );
  }
}
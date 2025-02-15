import 'package:bank_ui/models/recent_transactions.dart';
import 'package:bank_ui/widgets/statistics_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
       
       final double screenHeight = MediaQuery.of(context).size.height;
       final double screenWidth = MediaQuery.of(context).size.width;
       List<RecentTransactions> items = RecentTransactions.transactions();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        leading:Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
           color: Colors.grey, // Change this to your desired border color
           width: 1, // Change this to your desired border width
            ),
           ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
               IconlyLight.arrow_left_2,
               size: 24,
               color: Colors.black, // Change this to your desired icon color
    ),
  ),
),
        title: Text('Account statics', style: GoogleFonts.poppins(
          color: Colors.black,
        ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: Icon(Icons.more_horiz, size: 24,)
            )
        ],
      ),  
      body: Column(
        children: [
          Container(
            height: screenHeight / 4,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0,4),
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                       text: TextSpan(
                        text: 'spent overview',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          ),
                        children: const <TextSpan> [
                          TextSpan(
                            text: '\n10,576.00 frw',
                            style: TextStyle(
                                color: Colors.black, 
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                                )
                          ),
                        ]   
                       ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('january  ', style: GoogleFonts.poppins(
                               color: Colors.black,
                            ),
                            ),
                            Icon(IconlyLight.arrow_down_2, size: 16,)
                          ],
                        ),
                      )                     
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width:screenWidth / 3,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                    Container(
                        width:screenWidth / 5,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                    Container(
                      width:screenWidth / 4,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          ClipOval(
                            child: Container(
                              width: 15,
                              height: 15,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text('Entartnment'),
                          ],
                        ),
                        Text('6,500.00 frw', style: GoogleFonts.poppins(
                           color: Colors.black,
                           fontSize: 18,
                           fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          ClipOval(
                            child: Container(
                              width: 15,
                              height: 15,
                              color: Colors.yellow,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text('Invetsment'),
                          ],
                        ),
                        Text('6,500.00 frw', style: GoogleFonts.poppins(
                           color: Colors.black,
                           fontSize: 18,
                           fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          ClipOval(
                            child: Container(
                              width: 15,
                              height: 15,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text('Foods and beverage'),
                          ],
                        ),
                        Text('6,500.00 frw', style: GoogleFonts.poppins(
                           color: Colors.black,
                           fontSize: 18,
                           fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
            ),
            const SizedBox(height: 14),
          Container(
            height: screenHeight / 3,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0,4),
                )
              ],
            ),
            child: Column(
              children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                       text: TextSpan(
                        text: 'Total Expenses',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          ),
                        children: const <TextSpan> [
                          TextSpan(
                            text: '\n10,576.00 frw',
                            style: TextStyle(
                                color: Colors.black, 
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                                )
                          ),
                        ]   
                       ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('january  ', style: GoogleFonts.poppins(
                               color: Colors.black,
                            ),
                            ),
                            Icon(IconlyLight.arrow_down_2, size: 16,)
                          ],
                        ),
                      )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: screenHeight/ 4.1,
                  child: StatisticsChart(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          bottomTransactions(screenHeight, items),
        ],
      )     
    );
  }

  Column bottomTransactions(double screenHeight, List<RecentTransactions> items) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transactions', style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text('Filter', style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: 
        //       ListTile(
        //         leading: Container(
        //             margin: EdgeInsets.all(10),
        //             decoration: BoxDecoration(
        //              shape: BoxShape.circle,
        //               border: Border.all(
        //              color: Colors.grey, // Change this to your desired border color
        //              width: 1, // Change this to your desired border width
        //   ),
        //  ),
        //     child: Icon(Icons.subscriptions_outlined, color: Colors.blue,),
        //         ),
        //       ),
               Container(
                height: screenHeight / 8,
                 child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context,index){
                   return Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                     child: ListTile(                               
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
                          ),
                   );
                  }
                 ),
               )
            ),
          ],
        );
  }
}
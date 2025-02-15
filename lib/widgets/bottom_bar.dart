import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class BottomBar extends StatelessWidget {
 
    final int currentIndex;
   final Function(int) onItemTapped;

  const BottomBar({
    required this.currentIndex,
    required this.onItemTapped,
    super.key
    });

  @override
  Widget build(BuildContext context) {


 return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              onItemTapped(0);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 0 ? IconlyBold.home :  IconlyLight.home,
                  color: currentIndex == 0 ? Colors.blue : Colors.black
                  ),
                const SizedBox(height: 4),
                Text('Home', style: GoogleFonts.aBeeZee(
                  color: currentIndex == 0 ? Colors.blue : Colors.grey[700],
                ),
                )
              ],
            ),
          ),
          GestureDetector(
           onTap: (){
              onItemTapped(1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                 currentIndex == 1 ? IconlyBold.chart : IconlyLight.chart,
                 color: currentIndex == 1 ? Colors.blue : Colors.black
                  ),
                const SizedBox(height: 4),
                Text('Statics', style: GoogleFonts.aBeeZee(
                  color: currentIndex == 1 ? Colors.blue : Colors.grey[700],
                ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              onItemTapped(2);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                currentIndex == 2 ? IconlyBold.wallet :   IconlyLight.wallet,
                color: currentIndex == 2 ? Colors.blue : Colors.black
                  ),
                const SizedBox(height: 4),
                Text('Cards', style: GoogleFonts.aBeeZee(
                  color: currentIndex == 2 ? Colors.blue : Colors.grey[700],
                ),
                )
              ],
            ),
          ),
          GestureDetector(
              onTap: (){
              onItemTapped(3);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                 currentIndex == 3 ? IconlyBold.profile : IconlyLight.profile,
                 color: currentIndex == 3 ? Colors.blue : Colors.black
                  ),
                const SizedBox(height: 4),
                Text('Account', style: GoogleFonts.aBeeZee(
                  color: currentIndex == 3 ? Colors.blue : Colors.grey[700],
                ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
 return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(IconlyLight.home),
              const SizedBox(height: 4),
              Text('Home', style: GoogleFonts.aBeeZee(
                color: Colors.grey[700],
              ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(IconlyLight.chart),
              const SizedBox(height: 4),
              Text('Statics', style: GoogleFonts.aBeeZee(
                color: Colors.grey[700],
              ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(IconlyLight.wallet),
              const SizedBox(height: 4),
              Text('Cards', style: GoogleFonts.aBeeZee(
                color: Colors.grey[700],
              ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(IconlyLight.profile),
              const SizedBox(height: 4),
              Text('Account', style: GoogleFonts.aBeeZee(
                color: Colors.grey[700],
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
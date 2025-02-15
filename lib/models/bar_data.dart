
import 'package:bank_ui/models/individual_bar.dart';

class BarData {
  final double sun;
  final double mon;
  final double tue;
  final double wed;
  final double thur;
  final double fri;
  final double sut;

  BarData({
    required this.sun,
    required this.mon,
    required this.tue,
    required this.wed,
    required this.thur,
    required this.fri,
    required this.sut
  });
  
   List<IndividualBar> initBarData(){
       List<IndividualBar> barData = [];

       barData.add(IndividualBar(x: 0, y: sun));
       barData.add(IndividualBar(x: 1, y: mon));
       barData.add(IndividualBar(x: 2, y: tue));
       barData.add(IndividualBar(x: 3, y: wed));
       barData.add(IndividualBar(x: 4, y: thur));
       barData.add(IndividualBar(x: 5, y: fri));
       barData.add(IndividualBar(x: 6, y: sut));
       
       return barData;
  }

}
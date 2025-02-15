import 'package:bank_ui/models/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticsChart extends StatelessWidget {
  const StatisticsChart({super.key});

  @override
  Widget build(BuildContext context) {
 
    List<double> weeklySummary = [
      200.00,
      300.00,
      400.00,
      100.00,
      800.00,
      1000.00,
      700.00
    ];

    BarData myBarData = BarData(
      sun: weeklySummary[0], 
      mon: weeklySummary[1], 
      tue: weeklySummary[2], 
      wed: weeklySummary[3], 
      thur: weeklySummary[4], 
      fri: weeklySummary[5], 
      sut: weeklySummary[6],
      );

      myBarData.initBarData();

    return BarChart(
      BarChartData(
        minY: 200,
        maxY: 1000,
        gridData: FlGridData(
          show: false
        ),
        borderData: FlBorderData(
          show: false
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true,
             getTitlesWidget: getBottomTiles
            )
          )
        ),
        barGroups: myBarData.initBarData().map(
          (data) => BarChartGroupData(
            x: data.x,
            barRods: [
              BarChartRodData(
                toY: data.y,
                color: Colors.blue,
                width: 22,
                borderRadius: BorderRadius.circular(5)
                )
            ]
            )
          ).toList()
      )
    );
  }
}

 Widget getBottomTiles(double value, TitleMeta meta){
     
   Widget text;

     switch(value.toInt()){
         case 0:
          text = Text('sun');
          break;
         case 1:
          text = Text('mon');
          break;
         case 2:
          text = Text('tue');
          break;
         case 3:
          text = Text('wed');
          break;
         case 4:
          text = Text('thur');
          break;
         case 5:
          text = Text('fri');
          break;
         case 6:
          text = Text('sut');
          break;
          default:
          text = Text('');
     }
 return SideTitleWidget(
  meta: meta, 
  child: text
  );
 } 
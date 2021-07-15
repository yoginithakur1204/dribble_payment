import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle =
    TextStyle(fontSize: 10, 
    color: Colors.white, 
    fontWeight: FontWeight.bold);

    return SizedBox(
      width: 350,
      height: 330,
      child: LineChart(
        LineChartData(
         // lineTouchData: LineTouchData(enabled: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(1, 1),
                FlSpot(1, 1),
                FlSpot(2, 4),
                FlSpot(3, 1),
                FlSpot(4, 2),
                FlSpot(5, 4),
                

              ],
              isCurved: true,
              barWidth: 4,
              colors: [
                Colors.orange,
              ],
             /* belowBarData: BarAreaData(
                //show: true,
               // colors: [Colors.lightGreen.withOpacity(0.4)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),*/
              aboveBarData: BarAreaData(
                show: true,
                colors: [Colors.red.withOpacity(0.6)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          minY: 0,
          titlesData: FlTitlesData(
            
            
            bottomTitles: SideTitles(
              
               showTitles: true,
               
                reservedSize: 6,
                
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 0:
                      return '2015';
                    case 1:
                      return '2016';
                    case 2:
                      return '2017';
                    case 3:
                      return '2018';
                    case 4:
                      return '2019';
                    default:
                      return '';
                  }
                }),
            leftTitles: SideTitles(
              
              showTitles: true,
              
             // getTextStyles: Colors.white,
              
              getTitles: (value) {
                return '\$ ${value + 20}';
              },
            ),
          ),
          axisTitleData: FlAxisTitleData(
             // leftTitle: AxisTitle(showTitle: true, titleText: 'Value', margin: 10, textStyle: TextStyle(color: Colors.white)),
              bottomTitle: AxisTitle(
                  showTitle: true,
                  margin: 10,
                  titleText: 'Year',
                  textStyle: yearTextStyle,
                  
                  textAlign: TextAlign.right,
                  )),
          gridData: FlGridData(
          // show: true,
            checkToShowHorizontalLine: (double value) {
              return value == 1 || value == 2 || value == 3 || value == 4;
            },
          ),
        ),
      ),
    );
  }
}
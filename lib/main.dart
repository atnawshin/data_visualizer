import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AspectRatio(
        aspectRatio: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  show: true,
                  spots: [
                    const FlSpot(0, 0),
                    const FlSpot(1, 6),
                    const FlSpot(2, 1),
                    const FlSpot(3, 9),
                    const FlSpot(4, 0),
                    const FlSpot(5, 9),
                    const FlSpot(6, 2),
                  ],
                  // color: Colors.red, //can't provide gradient and color together
                  gradient: const LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.purpleAccent,
                      Colors.lightBlue,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  barWidth: 4, //change the width of the line
                  isCurved: true, // to have a curved line chart
                  // curveSmoothness: 0.35, // to control the smoothness of the curve
                  // preventCurveOverShooting: true, // it prevents the line from overflow
                  isStrokeCapRound: true, // to make the edges round
                  // isStrokeJoinRound: true, // if the isCurved is true then we don't need this
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.red.withOpacity(0.3),
                  ),
                  aboveBarData: BarAreaData(
                    show: true,
                    color: Colors.green.withOpacity(0.3),
                  ),
                  dotData: FlDotData(
                    show: true,
                    checkToShowDot: (spot, barData) {
                      // return spot.x % 2 == 0;
                      // return spot.x == 0; //to show a particular point
                      // return true;
                      return false;
                    },
                    getDotPainter: (
                      //to convert the point to cross shape
                      FlSpot spot,
                      double xPercentage,
                      LineChartBarData bar,
                      int index, {
                      double? size,
                    })
                        //  {
                        //   return FlDotCrossPainter(
                        //     size: 40,
                        //     color: [
                        //       Colors.red,
                        //       Colors.blue,
                        //       Colors.green,
                        //     ][index % 3],
                        //   );
                        // }
                        {
                      return FlDotSquarePainter(
                        size: 20,
                        color: [
                          Colors.red,
                          Colors.blue,
                          Colors.green,
                        ][index % 3],
                      );
                    },
                  ),
                  // shadow: const Shadow(
                  //   color: Colors.yellow,
                  //   blurRadius: 40,
                  // ),
                  // dashArray: [4, 8, 50],
                  // showingIndicators: [1, 5],
                  isStepLineChart: true, // becomes a stepped line chart
                  lineChartStepData: const LineChartStepData(
                    stepDirection: 0.5,
                  ),
                ),
                LineChartBarData(
                  show: true,
                  spots: [
                    const FlSpot(0, 0),
                    const FlSpot(1, 3),
                    const FlSpot(2, 2),
                    const FlSpot(3, 7),
                    const FlSpot(4, 4),
                    const FlSpot(5, 2),
                    const FlSpot(6, 5),
                  ],
                  // color: Colors.red, //can't provide gradient and color together
                  gradient: const LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.purpleAccent,
                      Colors.lightBlue,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  barWidth: 4, //change the width of the line
                  isCurved: true, // to have a curved line chart
                  // curveSmoothness: 0.35, // to control the smoothness of the curve
                  // preventCurveOverShooting: true, // it prevents the line from overflow
                  isStrokeCapRound: true, // to make the edges round
                  isStepLineChart: false, // becomes a stepped line chart
                  lineChartStepData: const LineChartStepData(
                    stepDirection: 0.5,
                  ),
                ),
              ],
              // backgroundColor: Colors.black,
              clipData: FlClipData.all(),
              betweenBarsData: [
                BetweenBarsData(
                  fromIndex: 0,
                  toIndex: 1,
                  color: Colors.black87,
                ),
              ],
              gridData: const FlGridData(
                show: true,
                drawHorizontalLine: false,
              ),
              borderData: FlBorderData(
                show: true,
                // border: Border.all(
                //   color: Colors.red,
                //   width: 4,
                // ),
                border: const Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 4,
                  ),
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 4,
                  ),
                ),
              ),
              // minX: 0,
              // maxX: 20,
              // minY: 5,
              // maxY: 10,
              // extraLinesData:
              //     ExtraLinesData(horizontalLines: [HorizontalLine(y: 3)]),
              // lineTouchData: LineTouchData(
              // touchCallback: (event, result) {
              //   final response = result as LineTouchResponse;
              //   print('Event: $event, result: ${response}');
              // },
              // handleBuiltInTouches: false,
              // touchSpotThreshold: 30,
              // getTouchLineEnd: (LineChartBarData barData, int spotIndex) {
              //   return double.infinity;
              // },
              // ),
              titlesData: FlTitlesData(
                show: true,
                rightTitles: AxisTitles(
                  // axisNameWidget: Text('Data'),
                  axisNameWidget: const Icon(Icons.ac_unit),
                  axisNameSize: 30,
                  sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            meta.formattedValue,
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                        // return SideTitleWidget(
                        //   axisSide: meta.axisSide,
                        //   child: Text(
                        //     meta.formattedValue,
                        //   ),
                        // );
                      }),
                ),
              ),
              // lineTouchData: const LineTouchData(enabled: false),
            ),
          ),
        ),
      )),
    );
  }
}

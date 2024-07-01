import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
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
                      const FlSpot(7, 3),
                      const FlSpot(9, 3),
                      const FlSpot(10, 1),
                    ],
                    gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.purpleAccent,
                        Colors.lightBlue,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    barWidth: 4,
                    isCurved: true,
                    preventCurveOverShooting: true,
                    isStrokeCapRound: true,
                  ),
                ],
                // backgroundColor: Colors.black12,
                clipData: FlClipData.all(),
                minX: 0,
                maxX: 10,
                minY: 0,
                maxY: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

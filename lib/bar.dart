import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 2.0,
          child: Container(
            margin: EdgeInsets.all(24),
            // color: Colors.red,
            child: BarChart(
              BarChartData(
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(toY: 4),
                    BarChartRodData(toY: 6)
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(toY: 4),
                    BarChartRodData(toY: 6)
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(toY: 14),
                    BarChartRodData(toY: 10)
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(toY: 16),
                    BarChartRodData(toY: 7)
                  ]),
                  // BarChartGroupData(x: 0, barRods: [
                  //   BarChartRodData(toY: 7),
                  //   BarChartRodData(toY: 11)
                  // ]),
                  // BarChartGroupData(x: 0, barRods: [
                  //   BarChartRodData(toY: 6),
                  //   BarChartRodData(toY: 3)
                  // ]),
                  // BarChartGroupData(x: 0, barRods: [
                  //   BarChartRodData(toY: 8),
                  //   BarChartRodData(toY: 14)
                  // ]),
                ],
                alignment: BarChartAlignment.start,
                groupsSpace: 10,
                titlesData: FlTitlesData(
                  show: true,
                  leftTitles: AxisTitles(
                    // axisNameWidget: Text("Y-axis"),
                    axisNameWidget: Icon(Icons.access_alarm),
                    axisNameSize: 10,
                    // drawBelowEverything: false,
                    sideTitles: SideTitles(
                      reservedSize: 40,
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        // return Align(
                        //   alignment: Alignment.centerRight,
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(right: 8.0),
                        //     child: Text(
                        //       meta.formattedValue,
                        //       style: TextStyle(
                        //         color: Colors.blue,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // );
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: switch (value) {
                            0 => Text(meta.formattedValue),
                            5 => TextButton(
                                onPressed: () {},
                                child: Text(meta.formattedValue),
                              ),
                            _ => const Icon(Icons.account_balance),
                          },
                        );
                        //   return SideTitleWidget(
                        //       axisSide: meta.axisSide,
                        //       //does the same thing as above
                        //       child:
                        //           //  Text(
                        //           //   meta.formattedValue,
                        //           //   style: const TextStyle(
                        //           //     color: Colors.blue,
                        //           //     fontWeight: FontWeight.bold,
                        //           //   ),
                        //           // ),
                        //           //     Icon(
                        //           //   Icons.add,
                        //           //   size: 14,
                        //           // ),
                        //           TextButton(
                        //         onPressed: () {},
                        //         child: Text(meta.formattedValue),
                        //       ));
                      },
                    ),
                  ),
                  // bottomTitles: AxisTitles(
                  //   axisNameWidget: Text("X-axis"),
                  //   sideTitles: SideTitles(
                  //     reservedSize: 44,
                  //     showTitles: true,
                  //   ),
                  // ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

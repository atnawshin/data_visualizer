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
            margin: const EdgeInsets.all(24),
            // color: Colors.red,
            child: BarChart(
              BarChartData(
                barGroups: [
                  BarChartGroupData(
                      // groupVertically: true,
                      x: 0,
                      barRods: [
                        BarChartRodData(
                            fromY: 5,
                            toY: 15,
                            width: 20,
                            color: Colors.orange,
                            borderRadius: BorderRadius.zero,
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                            borderDashArray: [8, 8],
                            // backDrawRodData: BackgroundBarChartRodData(
                            //   fromY: 0,
                            //   toY: 20,
                            //   show: true,
                            //   color: Colors.black.withOpacity(0.2),
                            // ),
                            gradient: const LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.green,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                        BarChartRodData(fromY: 10, toY: 15),
                      ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(toY: 4, color: Colors.orange),
                    BarChartRodData(toY: 6)
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(toY: 14, color: Colors.orange),
                    BarChartRodData(toY: 10)
                  ]),
                  BarChartGroupData(x: 8, barRods: [
                    BarChartRodData(toY: 12, color: Colors.orange),
                    BarChartRodData(
                      toY: 12,
                      width: 20,
                      rodStackItems: [
                        BarChartRodStackItem(0, 5, Colors.red),
                        BarChartRodStackItem(5, 10, Colors.green),
                        BarChartRodStackItem(10, 12, Colors.purple),
                      ],
                    )
                  ]),
                  BarChartGroupData(x: 4, barRods: [
                    BarChartRodData(toY: -4, color: Colors.orange),
                    BarChartRodData(toY: -6)
                  ]),
                  BarChartGroupData(x: 5, barRods: [
                    BarChartRodData(toY: -8, color: Colors.orange),
                    BarChartRodData(toY: -2)
                  ]),
                  // BarChartGroupData(x: 0, barRods: [
                  //   BarChartRodData(toY: 8),
                  //   BarChartRodData(toY: 14)
                  // ]),
                ],
                alignment: BarChartAlignment.center,
                groupsSpace: 10,
                backgroundColor: Colors.purple.withOpacity(0.15),

                barTouchData: BarTouchData(
                  allowTouchBarBackDraw: true,
                  touchTooltipData: BarTouchTooltipData(
                    tooltipRoundedRadius: 0,
                    tooltipMargin: 0,
                    fitInsideVertically: true,
                    fitInsideHorizontally: true,
                    // direction: TooltipDirection.top,
                    direction: TooltipDirection.auto,
                    tooltipBorder:
                        const BorderSide(color: Colors.red, width: 6),
                    getTooltipItem: (
                      BarChartGroupData group,
                      int groupIndex,
                      BarChartRodData rod,
                      int rodIndex,
                    ) {
                      final color = rod.gradient?.colors.first ?? rod.color;

                      return BarTooltipItem(
                        rod.toY.toString(),
                        TextStyle(
                          color: switch (groupIndex) {
                            0 => Colors.white,
                            1 => Colors.blue,
                            2 => Colors.yellow,
                            _ => Colors.white,
                          },
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                        ),
                      );
                    },
                    getTooltipColor: (BarChartGroupData group) => Colors.black,
                    //  {
                    //   return Colors.transparent;
                    // },
                    // tooltipHorizontalAlignment: FLHorizontalAlignment.right,
                    // tooltipHorizontalOffset: 10,
                    // maxContentWidth: 400,
                  ),
                  touchExtraThreshold: const EdgeInsets.all(10),
                  // handleBuiltInTouches:
                  //     false, //disable it if wan to implement your own touch behavior
                  //   mouseCursorResolver:
                  //     (FlTouchEvent event, BarTouchResponse? response) {
                  //   if (response == null || response.spot == null) {
                  //     return SystemMouseCursors.grab;
                  //   }
                  //   return SystemMouseCursors.click;
                  // },
                ),
                // rangeAnnotations: RangeAnnotations(
                //   horizontalRangeAnnotations: [
                //     HorizontalRangeAnnotation(
                //       y1: 4,
                //       y2: 8,
                //       color: Colors.red.withOpacity(0.5),
                //     ),
                //     HorizontalRangeAnnotation(
                //       y1: 10,
                //       y2: 12,
                //       // color: Colors.red.withOpacity(0.5),
                //       gradient: const LinearGradient(
                //         colors: [
                //           Colors.red,
                //           Colors.green,
                //           Colors.purple,
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                // titlesData: const FlTitlesData(
                //   show: true,
                //   leftTitles: AxisTitles(
                //     // axisNameWidget: Text("Y-axis"),
                //     axisNameWidget: Icon(Icons.access_alarm),
                //     axisNameSize: 10,
                //     // drawBelowEverything: false,
                //     sideTitles: SideTitles(
                //       reservedSize: 40,
                //       showTitles: true,
                //       // interval: 4,
                //       // interval: null,
                //       // getTitlesWidget: (double value, TitleMeta meta) {
                //       // return Align(
                //       //   alignment: Alignment.centerRight,
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(right: 8.0),
                //       //     child: Text(
                //       //       meta.formattedValue,
                //       //       style: TextStyle(
                //       //         color: Colors.blue,
                //       //         fontWeight: FontWeight.bold,
                //       //       ),
                //       //     ),
                //       //   ),
                //       // );
                //       // return SideTitleWidget(
                //       //   axisSide: meta.axisSide,
                //       //   child: switch (value) {
                //       //     0 => Text(meta.formattedValue),
                //       //     5 => TextButton(
                //       //         onPressed: () {},
                //       //         child: Text(meta.formattedValue),
                //       //       ),
                //       //     _ => const Icon(Icons.account_balance),
                //       //   },
                //       // );
                //       //   return SideTitleWidget(
                //       //       axisSide: meta.axisSide,
                //       //       //does the same thing as above
                //       //       child:
                //       //           //  Text(
                //       //           //   meta.formattedValue,
                //       //           //   style: const TextStyle(
                //       //           //     color: Colors.blue,
                //       //           //     fontWeight: FontWeight.bold,
                //       //           //   ),
                //       //           // ),
                //       //           //     Icon(
                //       //           //   Icons.add,
                //       //           //   size: 14,
                //       //           // ),
                //       //           TextButton(
                //       //         onPressed: () {},
                //       //         child: Text(meta.formattedValue),
                //       //       ));
                //       // },
                //     ),
                //   ),
                //   // bottomTitles: AxisTitles(
                //   //   axisNameWidget: Text("X-axis"),
                //   //   sideTitles: SideTitles(
                //   //     reservedSize: 44,
                //   //     showTitles: true,
                //   //   ),
                //   // ),
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

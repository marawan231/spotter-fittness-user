import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../data/models/titels_data.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 103.h,
      child: LineChart(
        LineChartData(
            baselineX: 0,
            baselineY: 0,
            lineTouchData: LineTouchData(
              enabled: false,
            ),
            minX: 0,
            maxX: 6,
            minY: 0,
            maxY: 7,
            borderData: FlBorderData(
              show: true,
              border: Border.symmetric(
                horizontal: BorderSide.none,
                vertical: BorderSide(color: ColorManager.secondary, width: 1),
              ),
            ),
            gridData: FlGridData(
              show: true,
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: ColorManager.secondary,
                  strokeWidth: 1,
                );
              },
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: ColorManager.white,
                  strokeWidth: 0,
                );
              },
            ),
            titlesData: LineTitles.getTitleData(),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                color: ColorManager.babyBlue,
                barWidth: 2.sp,
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) =>
                      FlDotCirclePainter(
                    radius: 2.r,
                    strokeWidth: 2.sp,
                    color: ColorManager.white,
                    strokeColor: ColorManager.secondary,
                  ),
                ),
                spots: [
                  const FlSpot(0, 2),
                  const FlSpot(1, 3),
                  const FlSpot(2, 2),
                  const FlSpot(3, 5),
                  const FlSpot(4, 5.5),
                  const FlSpot(5, 6),
                  const FlSpot(6, 3),
                ],
              )
            ]),
      ),
    );
  }
}
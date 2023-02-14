import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import 'categories.dart';
import 'custom_chart.dart';

class GoalsProgressChart extends StatelessWidget {
  const GoalsProgressChart({Key? key}) : super(key: key);

  
  _buildChartBackGroundContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h, right: 14.w, left: 14.w),
      child: Container(
        height: 189.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        child: _buildChartData(context),
      ),
    );
  }

  _buildChartData(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 32.5.w, right: 33.5.w, bottom: 16.h, top: 20.h),
      child: Column(
        children: [
          const Categories(),
          const Spacer(),
          const CustomChart(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildChartBackGroundContainer(context);
  }
}
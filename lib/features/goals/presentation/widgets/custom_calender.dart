import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import 'days_calender_item.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({Key? key}) : super(key: key);

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime? currentSelectedDate;
  var currentMon = date.month;
  DateTime now = DateTime.now();
  late DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
  bool isSelected = false;

  _buildCalender(BuildContext context) {
    return Container(
      height: 88,
      decoration: BoxDecoration(
        color: ColorManager.lightGrey,
      ),
      child: _buildWeekDaysList(context),
    );
  }

  Widget _buildWeekDaysList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.w, top: 13.h, bottom: 12.h),
      child: ListView.builder(
        itemCount: lastDayOfMonth.day,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DaysCalenderItem(
            isSelected: isSelected,
            index: index,
            dayName: () {
              final currentDate = date.add(Duration(days: index));
              final dateName = DateFormat('E').format(currentDate);
              return dateName;
            }(),
            dayNumber: () {
              final currentDate = date.add(Duration(days: index));
              final dateNumber = DateFormat('d').format(currentDate);
              return dateNumber;
            }(),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildCalender(context);
  }
}

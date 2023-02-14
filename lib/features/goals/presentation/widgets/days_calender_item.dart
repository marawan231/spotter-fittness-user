import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';

import '../../../../core/resources/constants.dart';
import '../../business_logic/cubit/cubit/goals_cubit.dart';

class DaysCalenderItem extends StatefulWidget {
  const DaysCalenderItem({
    Key? key,
    this.dayName,
    this.dayNumber,
    this.index,
    this.isSelected,
  }) : super(key: key);
  final String? dayName;
  final String? dayNumber;
  final int? index;
  final bool? isSelected;

  @override
  State<DaysCalenderItem> createState() => _DaysCalenderItemState();
}

class _DaysCalenderItemState extends State<DaysCalenderItem> {
  _buildItemBuilderBloc() {
    return BlocConsumer<GoalsCubit, TasksState>(
      listener: (context, state) {},
      builder: (context, state) {
        return _buildCalenderItem();
      },
    );
  }

  _buildCalenderItem() {
    return InkWell(
      onTap: () {
        _pressOnCalenderDay();
      },
      child: _buildItemBackGround(),
    );
  }

  _buildItemBackGround() {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        decoration: BoxDecoration(
            color: (selectedIndex == widget.index)
                ? ColorManager.secondary
                : ColorManager.transparent,
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        width: 43.w,
        height: 63.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDayName(),
            _buildDayNumber(),
          ],
        ),
      ),
    );
  }

  _buildDayName() {
    return Text(
      widget.dayName![0],
      style: TextStyle(
        fontWeight: (selectedIndex == widget.index)
            ? FontWeight.bold
            : FontWeight.normal,
        color: (selectedIndex == widget.index)
            ? ColorManager.white
            : ColorManager.grey33,
      ),
    );
  }

  _buildDayNumber() {
    return Text(
      "${widget.dayNumber}",
      style: TextStyle(
        fontWeight: (selectedIndex == widget.index)
            ? FontWeight.bold
            : FontWeight.normal,
        color: (selectedIndex == widget.index)
            ? ColorManager.white
            : ColorManager.grey33,
      ),
    );
  }

  void _pressOnCalenderDay() {
    BlocProvider.of<GoalsCubit>(context).selectDayToShowGoals(widget.index!);

    if (selectedIndex == widget.index) {
    } else {
      selectedIndex = widget.index!;
      widget.isSelected != true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildItemBuilderBloc();
  }
}

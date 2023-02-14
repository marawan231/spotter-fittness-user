// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/font_manager.dart';
import 'package:spotter_user/core/widgets/custom_button.dart';

import 'package:spotter_user/features/goals/presentation/widgets/custom_calender.dart';
import 'package:spotter_user/features/goals/presentation/widgets/goals_progress_chart.dart';
import 'package:spotter_user/features/goals/presentation/widgets/small_button.dart';
import '../../../../core/resources/assets_manager.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({Key? key}) : super(key: key);

  _buildGoalsViewAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(250),
      child: AppBar(
        title: const Text('Goals'),
        leading: Image.asset(
          ImageAssets.drawer,
        ),
        bottom: _buildGoalsViewChart(context),
      ),
    );
  }

  _buildGoalsViewChart(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.infinite,
      child: GoalsProgressChart(),
    );
  }

  _buildBody(BuildContext context) {
    return Stack(
      children: [
        _buildGoals(context),
        _buildAddGoalsButton(),
      ],
    );
  }

  _buildAddGoalsButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(right: 42.w, left: 43.w, bottom: 19.h),
        child: CustomButton(
            text: 'add your goals'.toUpperCase(), onPressed: () {}),
      ),
    );
  }

  _buildGoals(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(context),
        const CustomCalender(),
        _buildGoalsTable(context),
      ],
    );
  }

  _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, bottom: 7.h),
      child: Text(
        'Today goals',
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }

  _buildGoalsTable(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 7.w, top: 22.h),
      child: Column(
        children: [
          _buildTableTitles(context),
          _buildGoalsList(context),
        ],
      ),
    );
  }

  _buildGoalsList(BuildContext context) {
    return const SmallButton();
  }

  _buildTableTitles(BuildContext context) {
    return Row(
      children: [
        Text('Goals', style: Theme.of(context).textTheme.labelMedium),
        SizedBox(width: 110.w),
        Text('Target', style: Theme.of(context).textTheme.labelMedium),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildGoalsViewAppBar(context),
      body: _buildBody(context),
    );
  }
}

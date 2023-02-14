import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';
import 'package:spotter_user/core/resources/font_manager.dart';
import 'package:spotter_user/core/resources/style_manager.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({Key? key}) : super(key: key);
  _buildBackGround() {
    return Container(
      height: 35.h,
      width: 73.w,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.primary, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(6.r)),
      ),
      child: _buildButtonTitle(),
    );
  }

  _buildButtonTitle() {
    return Center(
      child: Text('Done',
          style: getMediumStyle(
              fontSize: FontSize.s11, color: ColorManager.primary)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBackGround();
  }
}

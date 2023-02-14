import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';
import 'package:spotter_user/core/resources/font_manager.dart';
import 'package:spotter_user/core/resources/style_manager.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.image, required this.title, this.onTap})
      : super(key: key);

  final String image;
  final String title;
  final void Function()? onTap;

  _buildBackground() {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 170.h,
        width: 170.w,
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.primary, width: 1.5.sp),
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
        ),
        child: _buildIcon(),
      ),
    );
  }

  _buildIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 70.h,
          width: 70.w,
          child: Image.asset(image),
        ),
        SizedBox(height: 14.7.h),
        Text(
          title,
          style: getMediumStyle(
            fontSize: FontSize.s14,
            color: ColorManager.primary,
            fontFamily: FontConstants.latoFontFamily,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBackground();
  }
}

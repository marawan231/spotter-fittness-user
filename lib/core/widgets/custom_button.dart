import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';
import 'package:spotter_user/core/resources/font_manager.dart';
import 'package:spotter_user/core/resources/style_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      width: double.infinity,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed,
        child: Text(text,
            style: getMediumStyle(
                fontSize: FontSize.s18, color: ColorManager.white)),
      ),
    );
  }
}

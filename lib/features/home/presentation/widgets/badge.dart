import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';

class Badge extends StatelessWidget {
  final Widget? child;
  final int? value;
  final Color? color;
  const Badge({
    Key? key,
    @required this.child,
    @required this.value,
    this.color,
  }) : super(key: key);

  _buildValue() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 6.48.w,
          height: 6.48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color ?? ColorManager.white,
          ),
        ),
        Container(
          height: 4.48.h,
          width: 4.48.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color ?? ColorManager.secondary,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.99.h,
      width: 18.24.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          child!,
          Positioned(
            top: 22.h,
            left: 12.w,
            child: _buildValue(),
          )
        ],
      ),
    );
  }
}

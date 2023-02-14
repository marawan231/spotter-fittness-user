import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';

class UploadImageContainer extends StatelessWidget {
  const UploadImageContainer({Key? key, required this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 70.h,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.secondary),
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      child: IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          onPressed: onTap,
          icon: Icon(
            Icons.camera_alt_outlined,
            color: ColorManager.primary,
            size: 30,
          )),
    );
  }
}

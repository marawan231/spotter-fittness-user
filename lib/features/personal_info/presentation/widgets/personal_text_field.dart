import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/values_manager.dart';

class PersonalTextField extends StatelessWidget {
  const PersonalTextField({
    Key? key,
    this.height,
    this.width,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.text,
    this.keyboardType,
    this.validator,
    this.obscureText,
    required this.title,
  }) : super(key: key);
  final double? height;
  final double? width;
  final String title;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? text;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? obscureText;

  _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontSize: FontSize.s16),
    );
  }

  Widget _buildBirthPickerTextField(BuildContext context) {
    return SizedBox(
      height: height ?? 66.h,
      width: width ?? double.infinity,
      child: TextFormField(
        // textAlignVertical: TextAlignVertical.center,
        expands: true,
        minLines: null,
        maxLines: null,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.secondary),
                borderRadius: BorderRadius.all(Radius.circular(15.r))),

            // focused border style
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: ColorManager.primary, width: AppSize.s1_5),
                borderRadius: BorderRadius.all(Radius.circular(15.r))),

            // error border style
            errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManager.error, width: AppSize.s1_5),
                borderRadius: BorderRadius.all(Radius.circular(15.r))),
            // focused border style
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: ColorManager.primary, width: AppSize.s1_5),
                borderRadius: BorderRadius.all(Radius.circular(15.r)))),
        // obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        cursorColor: Theme.of(context).primaryColor,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: FontSize.s14,
              color: ColorManager.black,
            ),
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(context),
        SizedBox(height: 10.h),
        _buildBirthPickerTextField(context),
      ],
    );
  }
}

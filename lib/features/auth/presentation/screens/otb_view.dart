// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:spotter_user/core/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/resources/color_manager.dart';

class OtbView extends StatefulWidget {
  const OtbView({Key? key}) : super(key: key);

  @override
  State<OtbView> createState() => _OtbViewState();
}

class _OtbViewState extends State<OtbView> {
  String? enteredOtpCode;
  _buildOtbBody() {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, left: 39.w, right: 39.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          SizedBox(height: 43.h),
          _buildSubTitle(),
          SizedBox(height: 25.h),
          _buildPhoneNumber(),
          SizedBox(height: 56.h),
          _buildPinCodeFieldsPhrase(),
          SizedBox(height: 58.h),
          _buildPinCodeFields(),
          SizedBox(height: 65.h),
          _buildButton(context),
          SizedBox(height: 50.h),
          _buildFooterPhrase(),
        ],
      ),
    );
  }

  _buildTitle() {
    return Text('VERIFICATION',
        style: Theme.of(context).textTheme.headlineMedium);
  }

  _buildSubTitle() {
    return Text(
      'Verification code sent to your email',
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  _buildPhoneNumber() {
    return Text(
      '+97-9784587648',
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }

  _buildPinCodeFieldsPhrase() {
    return Text(
      'Enter your OTP code here',
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  _buildPinCodeFields() {
    return Container(
      child: PinCodeTextField(
        backgroundColor: ColorManager.primary,
        keyboardType: TextInputType.number,
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          fieldOuterPadding: EdgeInsets.only(right: 6.w, left: 4.w),
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15),
          fieldHeight: 60,
          fieldWidth: 60,
          disabledColor: Colors.white,
          activeColor: Colors.white,
          activeFillColor: Colors.white,
          selectedFillColor: Colors.white,
          inactiveColor: Colors.white,
          inactiveFillColor: Colors.white,
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        onCompleted: (v) {
          enteredOtpCode = v;
        },
        onChanged: (value) {},
        beforeTextPaste: (text) {
          // print("Allowing to paste $text");
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
        appContext: context,
      ),
    );
  }

  _buildButton(context) {
    return CustomButton(
      text: 'VERiFY',
      onPressed: () {},
    );
  }

  _buildFooterPhrase() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: RichText(
            text: TextSpan(
          children: [
            TextSpan(
                text: 'Didn\'t recieve the code? ',
                style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
              text: 'Resend Code',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
          ],
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(),
      body: _buildOtbBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/font_manager.dart';
import 'package:spotter_user/core/resources/route_manager.dart';
import 'package:spotter_user/core/widgets/custom_button.dart';
import 'package:spotter_user/core/widgets/custom_textfield.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 50.h, right: 29.w),
      child: SizedBox(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            SizedBox(height: 105.h),
            _buildLoginForm(),
            SizedBox(height: 15.h),
            _buildForgotPasswordText(),
            SizedBox(height: 37.h),
            _buildLoginButton(),
            SizedBox(height: 66.h),
            _buildBottomText(),
          ],
        ),
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      AppStrings.signIn.toUpperCase(),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  _buildLoginForm() {
    return Form(
      key: _formKey,
      child: _buildLoginTextFields(),
    );
  }

  _buildLoginTextFields() {
    return Column(
      children: [
        _buildEmailTextField(),
        SizedBox(height: 30.h),
        _buildPasswordTextField(),
      ],
    );
  }

  _buildEmailTextField() {
    return const CustomTextField(
      hintText: AppStrings.email,
    );
  }

  _buildPasswordTextField() {
    return CustomTextField(
      hintText: AppStrings.password,
      suffixIcon: Icon(
        Icons.visibility,
        size: 20.sp,
      ),
    );
  }

  _buildForgotPasswordText() {
    return Padding(
      padding: EdgeInsets.only(left: 27.w),
      child: Text(
        AppStrings.forgotPassword,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: FontSize.s14,
            ),
      ),
    );
  }

  _buildLoginButton() {
    return CustomButton(
        text: AppStrings.signIn.toUpperCase(), onPressed: () {});
  }

  _buildBottomText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAcc,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.registerRoute);
          },
          child: Text(
            AppStrings.signUp,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(),
      body: _buildBody(context),
    );
  }
}

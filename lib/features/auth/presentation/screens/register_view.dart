import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../widgets/agree_terms_check_box.dart';
import '../widgets/agree_terms_text.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Widget _buildRegisterBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.w, right: 29.w, top: 30.h),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          SizedBox(height: 33.h),
          _buildRegisterForm(),
          SizedBox(height: 45.h),
          _buildAgreeTermsAndConditions(),
          SizedBox(height: 44.7.h),
          _buildSignUpButton(),
          SizedBox(height: 39.h),
          _buildBottomText(),
          Container(
            height: 50.h,
          ),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Text(
        AppStrings.signUp.toUpperCase(),
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }

  _buildRegisterForm() {
    return Form(
      key: _formKey,
      child: _buildRegisterTextFields(),
    );
  }

  _buildRegisterTextFields() {
    return Column(
      children: [
        _buildFullNameTextField(),
        SizedBox(height: 21.h),
        _buildEmailTextField(),
        SizedBox(height: 21.h),
        _buildPhoneNumberTextField(),
        SizedBox(height: 21.h),
        _buildPasswordTextField(),
        SizedBox(height: 21.h),
        _buildConfirmPasswordTextField(),
      ],
    );
  }

  _buildFullNameTextField() {
    return CustomTextField(
      controller: userNameController,
      hintText: 'Full Name',
    );
  }

  _buildEmailTextField() {
    return const CustomTextField(
      hintText: AppStrings.email,
    );
  }

  _buildPhoneNumberTextField() {
    return CustomTextField(
      controller: phoneNumberController,
      hintText: 'Phone number',
    );
  }

  _buildPasswordTextField() {
    return CustomTextField(
      hintText: 'Create password',
      suffixIcon: Icon(
        Icons.visibility,
        size: 20.sp,
      ),
    );
  }

  _buildConfirmPasswordTextField() {
    return CustomTextField(
      hintText: 'Confirm password',
      suffixIcon: Icon(
        Icons.visibility,
        size: 20.sp,
      ),
    );
  }

  Widget _buildAgreeTermsAndConditions() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const AgreeTermsCheckBox(),
        SizedBox(width: 13.w),
        AgreeTermsText(
          onTap: () {},
        ),
      ],
    );
  }

  _buildSignUpButton() {
    return CustomButton(text: AppStrings.signUp, onPressed: () {});
  }

  _buildBottomText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.alreadyHaveAccount,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.loginRoute);
          },
          child: Text(
            AppStrings.signIn,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
        Text(
          ' Now!',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: ColorManager.primary,
      body: _buildRegisterBody(context),
    );
  }
}

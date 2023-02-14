import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/color_manager.dart';
import 'package:spotter_user/core/resources/strings_manager.dart';
import 'package:spotter_user/core/widgets/custom_button.dart';
import 'package:spotter_user/features/personal_info/presentation/widgets/personal_text_field.dart';
import 'package:spotter_user/features/personal_info/presentation/widgets/custom_dropdown.dart';
import 'package:spotter_user/features/personal_info/presentation/widgets/upload_image_container.dart';

class EditPersonalInfoView extends StatefulWidget {
  const EditPersonalInfoView({Key? key}) : super(key: key);

  @override
  State<EditPersonalInfoView> createState() => _EditPersonalInfoViewState();
}

class _EditPersonalInfoViewState extends State<EditPersonalInfoView> {
  TextEditingController birthDayController = TextEditingController();
  _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 27.h),
      child: ListView(
        children: [
          _buildProfilePicture(context),
          SizedBox(height: 30.h),
          _buildOccupationDropDown(),
          SizedBox(height: 33.h),
          _buildCountryDropDown(),
          SizedBox(height: 30.h),
          _buildCityDropDown(),
          SizedBox(height: 30.h),
          _buildGenderDropDown(),
          SizedBox(height: 30.h),
          _buildBirthPicker(),
          SizedBox(height: 30.h),
          _buildAboutTextField(),
          SizedBox(height: 30.h),
          _buildInterstsTextField(),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CustomButton(text: 'submit'.toUpperCase(), onPressed: () {}),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  _buildProfilePicture(BuildContext context) {
    return Row(
      children: [
        UploadImageContainer(onTap: () {}),
        SizedBox(width: 20.w),
        Text(AppStrings.addProfilePicture,
            style: Theme.of(context).textTheme.bodySmall)
      ],
    );
  }

  _buildOccupationDropDown() {
    return const CustomDropDownMenu(title: 'Occupation');
  }

  _buildCountryDropDown() {
    return const CustomDropDownMenu(title: 'Country');
  }

  _buildCityDropDown() {
    return const CustomDropDownMenu(title: 'City');
  }

  _buildGenderDropDown() {
    return const CustomDropDownMenu(title: 'Gender');
  }

  _buildBirthPicker() {
    // birthDayController.text = '';
    return PersonalTextField(
      title: 'Date of birth',
      hintText: 'DD/MM/YYYY',
      controller: birthDayController,
      obscureText: false,
      keyboardType: TextInputType.datetime,
      suffixIcon: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          onPressed: (() {
            // print('pressed');
          }),
          icon: Icon(
            Icons.calendar_month_outlined,
            color: ColorManager.secondary,
          ),
        ),
      ),
    );
  }

  _buildAboutTextField() {
    return PersonalTextField(
      title: 'About',
      hintText: 'Add Text',
      height: 100.h,
    );
  }

  _buildInterstsTextField() {
    return PersonalTextField(
      title: 'Interests',
      hintText: 'Add Text',
      height: 100.h,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.addPersonalInfo),
      ),
      body: _buildBody(context),
    );
  }
}

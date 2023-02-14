import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  final items = ['item 1', 'item2', 'item3', 'item4'];
  // ignore: prefer_typing_uninitialized_variables
  var value;
  _buildTitle() {
    return Text(
      widget.title,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontSize: FontSize.s16),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Padding(
          padding: EdgeInsets.only(left: 28.5.w),
          child: Text(
            item,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      );

  _buildDropDown() {
    return Container(
      height: 66.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.secondary,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            isExpanded: true,
            icon: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: const Icon(Icons.arrow_drop_down),
            ),
            value: value,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        SizedBox(height: 10.h),
        _buildDropDown(),
      ],
    );
  }
}

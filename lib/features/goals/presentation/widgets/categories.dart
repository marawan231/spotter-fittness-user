import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(choicesList.length, (index) {
          return ChoiceChip(
            // labelPadding: EdgeInsets.all(value),
            pressElevation: 0,
            shadowColor: ColorManager.transparent,
            selectedShadowColor: ColorManager.transparent,
            elevation: 0,

            backgroundColor: ColorManager.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18.r),
              ),
            ),
            label: Text(
              choicesList[index],
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: defaultChoiceIndex == index
                        ? ColorManager.white
                        : ColorManager.grey8,
                  ),
            ),
            selected: defaultChoiceIndex == index,
            selectedColor: ColorManager.secondary,
            onSelected: (value) {
              setState(() {
                defaultChoiceIndex = value ? index : defaultChoiceIndex;

                // showSelectedView();
              });
            },
            // elevation: 1,
            padding: EdgeInsets.only(right: 4.w, left: 4.w, bottom: 8.h),
          );
        }),
      ),
    );
  }
}

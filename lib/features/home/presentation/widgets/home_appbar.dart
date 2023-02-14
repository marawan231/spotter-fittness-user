import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';
import 'badge.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  _buildHomeAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: _buildAppBarActions(),
      title: const Text('Home'),
      leading: Image.asset(
        ImageAssets.drawer,
      ),
      flexibleSpace: _buildBackGroundImage(),
      bottom: _buildUserName(),
    );
  }

  _buildBackGroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.09), BlendMode.dstATop),
          fit: BoxFit.cover,
          image: const AssetImage('assets/images/jog.jpg'),
        ),
      ),
    );
  }

  _buildUserName() {
    return PreferredSize(
      preferredSize: Size.infinite,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.w,
          bottom: 50.5.h,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Hello,\nJessica alba!",
            style: getSemiBoldStyle(
                fontSize: FontSize.s30, color: ColorManager.white),
            maxLines: 2,
            // textAlign: TextAlign.lft,
          ),
        ),
      ),
    );
  }

  _buildAppBarActions() {
    return [
      Padding(
        padding: EdgeInsets.only(right: 36.8.w),
        child: Badge(
          value: 0,
          child: Image.asset(
            ImageAssets.notifitcation,
            fit: BoxFit.contain,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return _buildHomeAppBar();
  }
}

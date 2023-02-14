import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/assets_manager.dart';
import 'package:spotter_user/features/home/presentation/widgets/home_card.dart';

import '../widgets/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  _buildHomeBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(
              onTap: () {},
              image: ImageAssets.goals,
              title: 'Goals',
            ),
            HomeCard(
              onTap: () {},
              image: ImageAssets.whistle,
              title: 'Find coach',
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(
              onTap: () {},
              image: ImageAssets.search,
              title: 'Find Friends',
            ),
            HomeCard(
              onTap: () {},
              image: ImageAssets.profile,
              title: 'Profile',
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(190),
        child: HomeAppbar(),
      ),
      body: _buildHomeBody(),
    );
  }
}

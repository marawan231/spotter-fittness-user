// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotter_user/core/resources/assets_manager.dart';
import 'package:spotter_user/features/goals/presentation/screens/goals_view.dart';

import 'home_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    GoalsView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 12.w, bottom: 18.h, right: 12.w),
        child: Container(
          height: 80.h,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed, // This is all you need!

              // backgroundColor: ColorManager.primary,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.1.h),
                    child: Image.asset(ImageAssets.navHome),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.1.h),
                    child: Image.asset(ImageAssets.navGoals),
                  ),
                  label: 'Your goals',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.1.h),
                    child: Image.asset(ImageAssets.navFind),
                  ),
                  label: 'Find coach',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.1.h),
                    child: Image.asset(ImageAssets.navFindFriends),
                  ),
                  label: 'Find friends',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 7.1.h),
                    child: Image.asset(ImageAssets.navProfile),
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
/*   appBar: PreferredSize(
      preferredSize: Size.fromHeight(190),
      child: HomeAppbar(),
    ) */
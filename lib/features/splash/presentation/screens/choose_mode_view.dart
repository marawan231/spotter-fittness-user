import 'package:flutter/material.dart';
import 'package:spotter_user/core/resources/assets_manager.dart';
import 'package:spotter_user/core/resources/color_manager.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({Key? key}) : super(key: key);

  _buildBody() {
    return Stack(
      children: [
        _buildBackgroundImage(),
        _buildBackgroundContainer(),
      ],
    );
  }

  _buildBackgroundImage() {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        ImageAssets.man,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildBackgroundContainer() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorManager.lightPrimary.withOpacity(.8),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}

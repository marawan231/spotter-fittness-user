import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: false,
        )),
        leftTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: false,
        )),
        topTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: false,
        )),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 23,
            getTitlesWidget: (value, titleMeta) {
              switch (value.toInt()) {
                case 0:
                  return Text(
                    'Mo',
                    style: titlesTextstyle,
                  );
                case 1:
                  return Text(
                    'Tu',
                    style: titlesTextstyle,
                  );
                case 2:
                  return Text(
                    'We',
                    style: titlesTextstyle,
                  );
                case 3:
                  return Text(
                    'Th',
                    style: titlesTextstyle,
                  );
                case 4:
                  return Text(
                    'Fr',
                    style: titlesTextstyle,
                  );
                case 5:
                  return Text(
                    'Sa',
                    style: titlesTextstyle,
                  );
                case 6:
                  return Text(
                    'Su',
                    style: titlesTextstyle,
                  );
              }
              return Text(
                '',
                style: titlesTextstyle,
              );
            },
          ),
        ),
      );
}

final titlesTextstyle = getRegularStyle(
  color: ColorManager.black,
  fontSize: FontSize.s14,
);

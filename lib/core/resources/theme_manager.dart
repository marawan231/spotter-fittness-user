import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'style_manager.dart';
import 'values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors

    primaryColor: ColorManager.primary,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.secondary),

    // color of any disabled button
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.secondary,
    // ripple effect color

    // // cardview theme
    // cardTheme: CardTheme(
    //   color: ColorManager.white,
    //   shadowColor: ColorManager.grey,
    //   elevation: AppSize.s4,
    // ),

    // //Floating action button theme
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: ColorManager.primary,
    // ),

    // app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        //systemNavigationBarColor: ColorManager.black,
      ),
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s0,
      //shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getLightStyle(fontSize: FontSize.s18, color: ColorManager.white),
    ),

    //bottom nav bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.primary,
        selectedItemColor: ColorManager.secondary,
        unselectedItemColor: ColorManager.white,
        unselectedLabelStyle: getLightStyle(
          fontSize: FontSize.s10,
          color: ColorManager.white,
        ),
        selectedLabelStyle: getLightStyle(
          fontSize: FontSize.s10,
          color: ColorManager.white,
        )),

    //TabBar

    // button theme
    // buttonTheme: ButtonThemeData(
    //     shape: const StadiumBorder(),
    //     disabledColor: ColorManager.grey1,
    //     buttonColor: ColorManager.black,
    //     splashColor: ColorManager.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            textStyle: getMediumStyle(
                color: ColorManager.white, fontSize: FontSize.s18),
            primary: ColorManager.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)))),

    // get text theme

    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),

      //title bold big size
      headlineLarge: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s25,
        fontFamily: FontConstants.latoFontFamily,
      ),

//title bold medium size
      headlineMedium: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s22,
        fontFamily: FontConstants.latoFontFamily,
      ),

//       headlineSmall:
//           getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16),
//       //
//       // titleMedium: getRegularStyle(
//       //   color: ColorManager.lightGrey,
//       //   fontSize: FontSize.s18,
//       // ),
//category title
      titleSmall: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSize.s12,
      ),

//       //
//       bodyLarge: getBoldStyle(
//         color: ColorManager.black,
//         fontSize: FontSize.s37,
//       ),
//default body style
      bodySmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSize.s14,
      ),

//       // bodyMedium: getRegularStyle(
//       //     color: ColorManager.black,
//       //     fontSize: FontSize.s37,
//       //     fontFamily: FontConstants.meddonFontFamily),

//       //
// for bottom text
      bodyMedium: getMediumStyle(
        color: ColorManager.white,
        fontFamily: FontConstants.latoFontFamily,
        fontSize: FontSize.s16,
      ),
// //used in categories label
//       labelSmall: getRegularStyle(
//         color: ColorManager.white,
//         fontSize: FontSize.s12,
//       ),

//       //
      labelMedium: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),


//       //home appbar
//       labelLarge: getBoldStyle(
//         color: ColorManager.white,
//         fontSize: FontSize.s30,
//       ),
//       //card
//       displaySmall: getSemiBoldStyle(
//         color: ColorManager.black,
//         fontSize: FontSize.s13,
//       ),
//       //card
//       displayMedium: getBoldStyle(
//         color: ColorManager.black,
//         fontSize: FontSize.s14,
//       ),
    ),

    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: ColorManager.grey,
        alignLabelWithHint: false,
        filled: true,
        fillColor: ColorManager.white,
        // content padding
        contentPadding: EdgeInsets.only(
          // top: 13.h,
          left: 27.w,
          // right: ,
          // bottom: 12.h,
        ),
        // hint style
        // isDense: true,
        hintStyle: getRegularStyle(
          color: ColorManager.grey5,
          fontSize: FontSize.s14,
          fontFamily: FontConstants.latoFontFamily,
        ),
        labelStyle:
            getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        errorStyle:
            getRegularStyle(color: ColorManager.error, fontSize: FontSize.s14),

        // enabled border style

        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.white),
            borderRadius: BorderRadius.all(Radius.circular(15.r))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(15.r))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(15.r))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(15.r)))),
    // label style

    // iconTheme: const IconThemeData(
    //   size: 30,
    // ),
  );
}

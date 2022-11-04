import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web/config/themes/colours.dart';


class AppTheme {
  AppTheme._();

  static ThemeData get mainTheme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Colours.night,
      scaffoldBackgroundColor: Colours.seashell,
      backgroundColor: Colors.white,
      unselectedWidgetColor: const Color(0xffb5b5b5),
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 22.sp,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 13.sp,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 11.sp,
          fontWeight: FontWeight.w300,
        ),
        labelLarge: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
        ),
        labelMedium: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 9.sp,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: TextStyle(
          color: Colours.night,
          height: 1.5,
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colours.night,
        secondary: Colours.night,
      ),
    );
  }
}

import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static const lightTextTheme = TextTheme(
    //* displays
    displaySmall: TextStyle(fontWeight: FontWeight.w700),
    displayLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 100),

    //* headlines
    headlineMedium: TextStyle(fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontWeight: FontWeight.w600),

    //* title
    titleLarge: TextStyle(fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontWeight: FontWeight.w500),
  );

  static const darkTextTheme = TextTheme(
    //* displays
    displaySmall: TextStyle(fontWeight: FontWeight.w700),
    displayLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 100),

    //* headlines
    headlineMedium: TextStyle(fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontWeight: FontWeight.w600),

    //* title
    titleLarge: TextStyle(fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontWeight: FontWeight.w500),
  );
}

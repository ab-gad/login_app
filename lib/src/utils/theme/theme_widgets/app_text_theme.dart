import 'package:flutter/material.dart';

final class AppTextTheme {
  static const lightTextTheme = TextTheme(
    headlineMedium: TextStyle(color: Colors.red),
    displaySmall: TextStyle(fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontWeight: FontWeight.w600),
  );

  static const darkTextTheme = TextTheme(
    headlineMedium: TextStyle(color: Colors.amber),
    displaySmall: TextStyle(fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontWeight: FontWeight.w600),
  );
}

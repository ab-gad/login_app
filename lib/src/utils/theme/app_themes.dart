import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/app_fonts.dart';
import 'package:login_app/src/utils/theme/theme_widgets/app_text_theme.dart';

final class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: AppFont.fontFamily,
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
    textTheme: AppTextTheme.lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: AppFont.fontFamily,
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
  );
}

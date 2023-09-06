import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/app_colors.dart';
import 'package:login_app/src/utils/theme/app_fonts.dart';
import 'package:login_app/src/utils/theme/theme_widgets/app_button_themes.dart';
import 'package:login_app/src/utils/theme/theme_widgets/app_text_theme.dart';

final class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: AppFont.fontFamily,
    useMaterial3: true,
    brightness: Brightness.light,
    // colorScheme: ColorScheme.fromSeed(
    //   seedColor: Colors.yellow,
    // ),
    textTheme: AppTextTheme.lightTextTheme,
    cardColor: AppColors.light.cardBg,
    primaryColor: AppColors.primary,
    colorScheme:
        const ColorScheme.light(primary: Color.fromARGB(255, 4, 156, 183)),
    elevatedButtonTheme: AppButtonTheme.elevatedButtonLightTheme,
    outlinedButtonTheme: AppButtonTheme.outlinedButtonLightTheme,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: AppFont.fontFamily,
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    primaryColor: AppColors.primary,
    cardColor: AppColors.dark.cardBg,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      background: AppColors.dark.bgPrimary,
    ),
    elevatedButtonTheme: AppButtonTheme.elevatedButtonDarkTheme,
    outlinedButtonTheme: AppButtonTheme.outlinedButtonDarkTheme,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );
}

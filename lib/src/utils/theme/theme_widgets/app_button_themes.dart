import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_padding.dart';

abstract class AppButtonTheme {
  static const _buttonDefaultTextSize = 18.0;
  static const _buttonDefaultPadding = 15.0;
  static final elevatedButtonDarkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.mediumPadding * 4,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
  static final elevatedButtonLightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.black,
      foregroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.mediumPadding * 4,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
  static final outlinedButtonDarkTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.mediumPadding * 4,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
  static final outlinedButtonLightTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.mediumPadding * 4,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
}

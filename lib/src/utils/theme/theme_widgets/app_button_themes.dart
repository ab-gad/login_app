import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_padding.dart';

final class AppButtonTheme {
  static const _buttonDefaultTextSize = 18.0;
  static const _buttonDefaultPadding = 15.0;
  static final elevatedButtonDarkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.black,
      shape: const BeveledRectangleBorder(),
      padding: const EdgeInsets.all(
        AppPadding.mediumPadding * 3,
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
      shape: const BeveledRectangleBorder(),
      padding: const EdgeInsets.all(
        _buttonDefaultPadding,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
  static final outlinedButtonDarkTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.white,
      shape: const BeveledRectangleBorder(),
      padding: const EdgeInsets.all(
        AppPadding.mediumPadding * 3,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
  static final outlinedButtonLightTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.black,
      shape: const BeveledRectangleBorder(),
      padding: const EdgeInsets.all(
        _buttonDefaultPadding,
      ),
      textStyle: const TextStyle(
        fontSize: _buttonDefaultTextSize,
      ),
    ),
  );
}

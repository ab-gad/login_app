import 'package:flutter/material.dart';

final class AppColors {
  // static colors (not relate to the theme mode)
  static const white = Colors.white;
  static const black = Colors.black;
  static const primary = Color(0xffffE400);

  //light mode colors
  static const light = _AppColor(
    cardBg: Color.fromARGB(14, 0, 0, 0),
    bgPrimary: Color(0xffffE400),
  );

  //dark mode colors
  static const dark = _AppColor(
      cardBg: Color.fromARGB(14, 255, 255, 255),
      bgPrimary: Color(0xff272526),
      onboardingPage1Color: Color(0xff272526),
      onboardingPage2Color: Color.fromARGB(255, 63, 44, 45),
      onboardingPage3Color: Color.fromARGB(255, 68, 54, 41),
      onboardingPage4Color: Color.fromARGB(255, 49, 32, 54));
}

class _AppColor {
  final Color bgPrimary;
  final Color secondary;
  final Color accent;
  final Color cardBg;

  //onboarding page
  final Color onboardingPage1Color;
  final Color onboardingPage2Color;
  final Color onboardingPage3Color;
  final Color onboardingPage4Color;

  const _AppColor({
    required this.bgPrimary,
    this.secondary = const Color(0xff272727),
    this.accent = const Color(0x001bff),
    this.cardBg = const Color(0xff7f6f1),
    this.onboardingPage1Color = Colors.white,
    this.onboardingPage2Color = const Color(0xfffddcdf),
    this.onboardingPage3Color = const Color(0xffffdcbd),
    this.onboardingPage4Color = const Color.fromARGB(255, 239, 205, 248),
  });
}

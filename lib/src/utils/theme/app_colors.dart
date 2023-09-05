import 'package:flutter/material.dart';

final class AppColors {
  //light mode colors
  static const light = _AppColor(
    primary: Color(0xffffE400),
  );

  //dark mode colors
  static const dark = _AppColor(
      primary: Color(0xff272526),
      onboardingPage1Color: Color(0xff272526),
      onboardingPage2Color: Color.fromARGB(255, 63, 44, 45),
      onboardingPage3Color: Color.fromARGB(255, 68, 54, 41),
      onboardingPage4Color: Color.fromARGB(255, 49, 32, 54));
}

class _AppColor {
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color white;
  final Color black;
  final Color cardBg;

  //onboarding page
  final Color onboardingPage1Color;
  final Color onboardingPage2Color;
  final Color onboardingPage3Color;
  final Color onboardingPage4Color;

  const _AppColor({
    required this.primary,
    this.secondary = const Color(0xff272727),
    this.accent = const Color(0x001bff),
    this.white = Colors.white,
    this.black = Colors.black,
    this.cardBg = const Color(0xff7f6f1),
    this.onboardingPage1Color = Colors.white,
    this.onboardingPage2Color = const Color(0xfffddcdf),
    this.onboardingPage3Color = const Color(0xffffdcbd),
    this.onboardingPage4Color = const Color.fromARGB(255, 239, 205, 248),
  });
}

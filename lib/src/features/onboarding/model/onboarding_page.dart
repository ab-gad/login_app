import 'package:flutter/material.dart';

class OnboardingPageModel {
  final Color bgColor;
  final String title;
  final String subTitle;
  final String imageUrl;
  final double imageHeight;
  final String counter;

  OnboardingPageModel(
      {required this.bgColor,
      required this.title,
      required this.subTitle,
      required this.imageUrl,
      required this.imageHeight,
      required this.counter});
}

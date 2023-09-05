import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/src/features/onboarding/model/onboarding_page.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingPageModel pageData;

  const OnboardingPage({
    required this.pageData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.defaultScreenPadding),
      color: pageData.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            pageData.imageUrl,
            height: pageData.imageHeight,
          ),
          Column(
            children: [
              Text(
                pageData.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                pageData.subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Text(
            pageData.counter,
          ),
        ],
      ),
    );
  }
}

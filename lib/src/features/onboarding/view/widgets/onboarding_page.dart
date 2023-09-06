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
      padding: const EdgeInsets.fromLTRB(
        AppPadding.defaultScreenPadding,
        AppPadding.defaultScreenPadding * 3,
        AppPadding.defaultScreenPadding,
        AppPadding.defaultScreenPadding * 7,
      ),
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
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppPadding.smallPadding,
              ),
              Text(
                pageData.subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            pageData.counter,
          ),
          // const SizedBox(
          //   height: 40,
          // )
        ],
      ),
    );
  }
}

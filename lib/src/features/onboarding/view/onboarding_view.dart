import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/features/onboarding/model/onboarding_page.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/features/onboarding/view/onboarding_page.dart';
import 'package:login_app/src/utils/theme/app_colors.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    final onboardingPagesData = [
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage1Color
            : AppColors.light.onboardingPage1Color,
        title: OnboardingConstants.sliderTitle1,
        subTitle: OnboardingConstants.sliderSubTitle1,
        imageUrl: OnboardingConstants.onboardingImage1,
        imageHeight: screenHeight * 0.5,
        counter: '1/4',
      ),
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage2Color
            : AppColors.light.onboardingPage2Color,
        title: OnboardingConstants.sliderTitle2,
        subTitle: OnboardingConstants.sliderSubTitle2,
        imageUrl: OnboardingConstants.onboardingImage2,
        imageHeight: screenHeight * 0.5,
        counter: '2/4',
      ),
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage3Color
            : AppColors.light.onboardingPage3Color,
        title: OnboardingConstants.sliderTitle3,
        subTitle: OnboardingConstants.sliderSubTitle3,
        imageUrl: OnboardingConstants.onboardingImage3,
        imageHeight: screenHeight * 0.5,
        counter: '3/4',
      ),
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage4Color
            : AppColors.light.onboardingPage4Color,
        title: OnboardingConstants.sliderTitle4,
        subTitle: OnboardingConstants.sliderSubTitle4,
        imageUrl: OnboardingConstants.onboardingImage4,
        imageHeight: screenHeight * 0.5,
        counter: '4/4',
      ),
    ];

    return Scaffold(
      body: Stack(children: [
        LiquidSwipe(
          pages: _buildOnboardingPage(onboardingPagesData),
        )
      ]),
    );
  }

  List<OnboardingPage> _buildOnboardingPage(
      List<OnboardingPageModel> onboardingPagesData) {
    return onboardingPagesData
        .map(
          (pageData) => OnboardingPage(
            pageData: pageData,
          ),
        )
        .toList();
  }
}

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/features/login/view/login_veiw.dart';
import 'package:login_app/src/features/onboarding/model/onboarding_page.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/features/onboarding/view/onboarding_page.dart';
import 'package:login_app/src/utils/theme/app_colors.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int _currentIndex = 0;
  final _controller = LiquidController();
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
        imageHeight: screenHeight * 0.4,
        counter: '1/4',
      ),
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage2Color
            : AppColors.light.onboardingPage2Color,
        title: OnboardingConstants.sliderTitle2,
        subTitle: OnboardingConstants.sliderSubTitle2,
        imageUrl: OnboardingConstants.onboardingImage2,
        imageHeight: screenHeight * 0.4,
        counter: '2/4',
      ),
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage3Color
            : AppColors.light.onboardingPage3Color,
        title: OnboardingConstants.sliderTitle3,
        subTitle: OnboardingConstants.sliderSubTitle3,
        imageUrl: OnboardingConstants.onboardingImage3,
        imageHeight: screenHeight * 0.4,
        counter: '3/4',
      ),
      OnboardingPageModel(
        bgColor: isDarkMode
            ? AppColors.dark.onboardingPage4Color
            : AppColors.light.onboardingPage4Color,
        title: OnboardingConstants.sliderTitle4,
        subTitle: OnboardingConstants.sliderSubTitle4,
        imageUrl: OnboardingConstants.onboardingImage4,
        imageHeight: screenHeight * 0.4,
        counter: '4/4',
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          LiquidSwipe(
            liquidController: _controller,
            onPageChangeCallback: (updateIndex) {
              setState(() {
                _currentIndex = updateIndex;
              });
            },
            pages: _buildOnboardingPage(onboardingPagesData),
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: AppPadding.defaultScreenPadding * 2.5,
            // left: 10,
            child: OutlinedButton(
              onPressed: () {
                _controller.animateToPage(page: _controller.currentPage + 1);
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: isDarkMode ? AppColors.black : AppColors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(
                  AppPadding.defaultScreenPadding,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                ),
                padding: const EdgeInsets.all(
                  AppPadding.defaultScreenPadding,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).viewPadding.top,
            right: AppPadding.defaultScreenPadding,
            child: TextButton(
              onPressed: () {
                _controller.jumpToPage(page: 3);
                // Navigator.of(context).pushReplacement(
                // MaterialPageRoute(builder: (_) => const LoginView()));
              },
              child: const Text(OnboardingConstants.skip),
            ),
          ),
          Positioned(
            bottom: AppPadding.defaultScreenPadding,
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: onboardingPagesData.length,
              effect: WormEffect(
                dotHeight: 5,
                activeDotColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
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

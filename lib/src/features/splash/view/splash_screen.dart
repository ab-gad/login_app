import 'package:flutter/material.dart';
import 'package:login_app/src/constants/app_string.dart';
import 'package:login_app/src/features/onboarding/view/onboarding_view.dart';
import 'package:login_app/src/features/splash/splash_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool isAnimationStarted = false;

  @override
  void initState() {
    Future.delayed(
      SplashConstants.beforeStartAnimationDuration,
      _startAnimation,
    );

    super.initState();
  }

  void _startAnimation() {
    setState(() {
      isAnimationStarted = true;
    });
    Future.delayed(SplashConstants.kickOffDuration, _startApp);
  }

  void _startApp() {
    //ToDo: go to onboarding or login
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const OnboardingView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: SplashConstants.animationDuration,
            top: isAnimationStarted ? 30 : -30,
            left: isAnimationStarted ? 10 : -30,
            child: AnimatedOpacity(
              opacity: isAnimationStarted ? 0.5 : 0,
              duration: SplashConstants.animationDuration,
              child: Container(
                width: SplashConstants.topCircleDiameter,
                height: SplashConstants.topCircleDiameter,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: SplashConstants.animationDuration,
            top: SplashConstants.topCircleDiameter +
                AppPadding.defaultScreenPadding +
                20,
            left: isAnimationStarted ? AppPadding.defaultScreenPadding : 150,
            child: AnimatedOpacity(
              opacity: isAnimationStarted ? 1 : 0,
              duration: SplashConstants.animationDuration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.appName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '-----------------',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    AppStrings.appSlogan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: SplashConstants.animationDuration,
            top: 220,
            left: isAnimationStarted ? AppPadding.defaultScreenPadding : -30,
            child: AnimatedOpacity(
              opacity: isAnimationStarted ? 1 : 0,
              duration: SplashConstants.animationDuration,
              child: Column(
                children: [
                  Image.asset(
                    SplashConstants.splashImage,
                    width: 350,
                    // width: 300,
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: SplashConstants.animationDuration,
            bottom: -10,
            right: isAnimationStarted ? 10 : -10,
            width: isAnimationStarted
                ? SplashConstants.topCircleDiameter * 2
                : SplashConstants.topCircleDiameter,
            height: isAnimationStarted
                ? SplashConstants.topCircleDiameter * 2
                : SplashConstants.topCircleDiameter,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

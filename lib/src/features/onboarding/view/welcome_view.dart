import 'package:flutter/material.dart';
import 'package:login_app/src/constants/app_string.dart';
import 'package:login_app/src/features/login/view/login_veiw.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/features/registeration/view/registeration_view.dart';
import 'package:login_app/src/utils/theme/app_colors.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: isDarkMode
                ? Theme.of(context).colorScheme.background
                : Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(AppPadding.mdScreenPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      OnboardingConstants.welcomeImage,
                      height: screenHeight * 0.5,
                    ),
                    Text(
                      OnboardingConstants.welcomeTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: AppPadding.smallPadding,
                    ),
                    Text(
                      OnboardingConstants.welcomeMsg,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const LoginView(),
                            ),
                          );
                        },
                        child: const Text(AppStrings.login),
                      ),
                    ),
                    const SizedBox(
                      width: AppPadding.mediumPadding * 2,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const RegistrationView(),
                            ),
                          );
                        },
                        child: const Text(
                          AppStrings.signUp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: -30,
            width: 150,
            height: 150,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

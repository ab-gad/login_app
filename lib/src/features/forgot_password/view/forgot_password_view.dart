import 'package:flutter/material.dart';
import 'package:login_app/src/features/forgot_password/forgot_password_constants.dart';
import 'package:login_app/src/features/login/login_constants.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/features/registeration/registration_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

import '../../../constants/app_string.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(
            AppPadding.defaultScreenPadding,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // -----<login header>-----
            Image.asset(
              OnboardingConstants.welcomeImage,
              width: screenHeight * .3,
            ),
            Text(
              ForgotPasswordConstants.forgotPasswordTitle,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              LoginConstants.loginMsg,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            // -----</login header>-----

            // -----</login form>-----
            Form(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.defaultScreenPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outlined),
                        hintText: LoginConstants.emailHint,
                        labelText: LoginConstants.email,
                      ),
                    ),
                    const SizedBox(
                      height: AppPadding.mediumPadding * 3,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        hintText: RegistrationConstants.phoneNoHint,
                        labelText: RegistrationConstants.phoneNo,
                      ),
                    ),
                    const SizedBox(
                      height: AppPadding.defaultScreenPadding,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          AppStrings.submit,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            // -----</login form>-----
          ]),
        ),
      ),
    );
  }
}

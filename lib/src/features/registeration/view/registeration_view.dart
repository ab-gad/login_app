import 'package:flutter/material.dart';
import 'package:login_app/src/constants/app_string.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/features/registeration/registration_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

import '../../login/login_constants.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(AppPadding.defaultScreenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // -----<login header>-----
                Image.asset(
                  OnboardingConstants.welcomeImage,
                  width: 150,
                ),
                Text(
                  RegistrationConstants.registrationTitle,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  RegistrationConstants.registrationMsg,
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
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outlined),
                            hintText: RegistrationConstants.fullNameHint,
                            labelText: RegistrationConstants.fullName,
                          ),
                        ),
                        const SizedBox(
                          height: AppPadding.mediumPadding * 3,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: LoginConstants.emailHint,
                            labelText: LoginConstants.email,
                          ),
                        ),
                        const SizedBox(
                          height: AppPadding.mediumPadding * 3,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            hintText: LoginConstants.passwordHint,
                            labelText: LoginConstants.password,
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
                        SizedBox(
                          height: AppPadding.defaultScreenPadding * 1.5,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              AppStrings.signUp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                // -----</login form>-----

                // -----<login footer>-----
                ,
                Column(
                  children: [
                    Text(LoginConstants.or.toUpperCase()),
                    const SizedBox(
                      height: AppPadding.defaultScreenPadding,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Image.asset(
                            LoginConstants.googleLogo,
                            width: 20,
                          ),
                          label: const Text(LoginConstants.signInWithGoogle)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          text: RegistrationConstants.alreadyHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: ' ${AppStrings.login}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                // -----</login footer>-----
              ],
            ),
          ),
        ),
      ),
    );
  }
}

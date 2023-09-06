import 'package:flutter/material.dart';
import 'package:login_app/src/constants/app_string.dart';
import 'package:login_app/src/features/login/login_constants.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  width: 170,
                ),
                Text(
                  LoginConstants.loginTitle,
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
                            prefixIcon: Icon(Icons.fingerprint),
                            hintText: LoginConstants.passwordHint,
                            labelText: LoginConstants.password,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppPadding.mediumPadding),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                LoginConstants.forgotPassword,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              AppStrings.login,
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
                          text: LoginConstants.doNotUHaveAnAccess,
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: ' ${AppStrings.signUp}',
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

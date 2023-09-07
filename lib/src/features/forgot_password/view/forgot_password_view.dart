import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/src/features/forgot_password/forgot_password_constants.dart';
import 'package:login_app/src/features/forgot_password/forgot_password_option.enum.dart';
import 'package:login_app/src/features/forgot_password/view/forgot_password_otp_view.dart';
import 'package:login_app/src/features/login/login_constants.dart';
import 'package:login_app/src/features/onboarding/onboarding_constants.dart';
import 'package:login_app/src/features/registeration/registration_constants.dart';
import 'package:login_app/src/utils/app_routes.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

import '../../../constants/app_string.dart';

class ForgotPasswordView extends StatelessWidget {
  final ForgotPasswordOptions option;
  final _emailController = TextEditingController(text: '');
  final _phoneNumberController = TextEditingController(text: '');
  ForgotPasswordView(this.option, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.defaultScreenPadding,
              vertical: AppPadding.defaultScreenPadding * 5,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -----<login header>-----
                  Image.asset(
                    ForgotPasswordConstants.forgotPasswordImage,
                    width: screenHeight * .5,
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
                          _buildSelectedOptionFormField(),
                          const SizedBox(
                            height: AppPadding.defaultScreenPadding,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                AppRoute.createAnimatedRoute(
                                  context,
                                  ForgotPasswordOtpView(
                                    option == ForgotPasswordOptions.email
                                        ? _emailController.value.text
                                        : _phoneNumberController.value.text,
                                  ),
                                );
                              },
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
      ),
    );
  }

  TextFormField _buildSelectedOptionFormField() {
    return switch (option) {
      ForgotPasswordOptions.email => TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email_outlined),
            hintText: LoginConstants.emailHint,
            labelText: LoginConstants.email,
          ),
        ),
      ForgotPasswordOptions.phoneNo => TextFormField(
          controller: _phoneNumberController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.phone_android),
            hintText: RegistrationConstants.phoneNoHint,
            labelText: RegistrationConstants.phoneNo,
          ),
        ),
    };
  }
}

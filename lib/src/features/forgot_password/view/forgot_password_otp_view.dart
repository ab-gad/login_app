import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_app/src/constants/app_string.dart';
import 'package:login_app/src/features/forgot_password/forgot_password_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class ForgotPasswordOtpView extends StatelessWidget {
  final String otpDestination;

  const ForgotPasswordOtpView(this.otpDestination, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(
          AppPadding.defaultScreenPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ForgotPasswordConstants.forgotPasswordOtpTitle,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              ForgotPasswordConstants.forgotPasswordOtpSubTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              width: double.infinity,
              height: AppPadding.defaultScreenPadding,
            ),
            Text.rich(
              TextSpan(
                text: ForgotPasswordConstants.forgotPasswordOtpMsg,
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: ' $otpDestination',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: double.infinity,
              height: AppPadding.defaultScreenPadding * 2,
            ),
            OtpTextField(
              fieldWidth: 45,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              numberOfFields: 6, // * Because we will use Firebase
              fillColor: Theme.of(context).cardColor,
              filled: true,
              focusedBorderColor: Theme.of(context).colorScheme.primary,
              cursorColor: Theme.of(context).colorScheme.primary,
              onSubmit: (value) {
                print('======================================');
                print('value');
                print('======================================');
              },
            ),
            const SizedBox(
              height: AppPadding.defaultScreenPadding * 2,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppStrings.next),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

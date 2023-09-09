import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/src/features/login/login_constants.dart';
import 'package:login_app/src/features/registeration/registration_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

import '../../../utils/theme/app_colors.dart';
import '../user_profile_constants.dart';

class EditUserProfileView extends StatelessWidget {
  const EditUserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).cardColor,
          statusBarIconBrightness:
              Theme.of(context).brightness == Brightness.dark
                  ? Brightness.light
                  : Brightness.dark,
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: const Text(
          "Edit User Profile",
        ),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: isDark
                ? const Icon(
                    Icons.sunny,
                  )
                : const Icon(
                    Icons.dark_mode,
                  ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          AppPadding.defaultScreenPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        UserProfileConstants.userImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.all(0),
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.black),
                      child: const Icon(
                        Icons.camera_alt,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: AppPadding.mediumPadding * 2,
              ),
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
                      const SizedBox(
                        height: AppPadding.defaultScreenPadding * 1.5,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.black,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Submit",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).highlightColor,
              ),
              const SizedBox(
                height: AppPadding.defaultScreenPadding / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: "Joined",
                      children: [
                        TextSpan(
                          text: ' 22, 10, 2021',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Theme.of(context)
                            .colorScheme
                            .error
                            .withOpacity(.15),
                        foregroundColor: Theme.of(context).colorScheme.error,
                      ),
                      child: const Text("Delete"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

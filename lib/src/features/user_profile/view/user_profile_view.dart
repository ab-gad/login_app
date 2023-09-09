import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/src/features/user_profile/user_profile_constants.dart';
import 'package:login_app/src/features/user_profile/view/edit_user_profile_view.dart';
import 'package:login_app/src/utils/app_routes.dart';
import 'package:login_app/src/utils/theme/app_colors.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

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
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        title: const Text(
          UserProfileConstants.pageTitle,
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
                        padding: EdgeInsets.all(0),
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.black),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppPadding.mediumPadding * 2,
            ),
            Text(
              "Abdelrahman Gad",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.apply(fontWeightDelta: 1),
            ),
            Text(
              "abdelrahman.ahmed5@gmail.com",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              width: double.infinity,
              height: AppPadding.defaultScreenPadding,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  AppRoute.createAnimatedRoute(
                    context,
                    EditUserProfileView(),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.black),
                child: const Text("Edit Profile"),
              ),
            ),
            //*==============================
            const SizedBox(
              height: AppPadding.defaultScreenPadding,
            ),
            //*==============================
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.12),
                ),
                child: Icon(
                  Icons.settings,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.12),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.12),
                ),
                child: Icon(
                  Icons.payments,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.12),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              title: Text(
                'Billing Details',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.12),
                ),
                child: Icon(
                  Icons.manage_accounts,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.12),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              title: Text(
                'User Management',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: AppPadding.defaultScreenPadding / 2,
            ),
            Divider(
              color: Theme.of(context).highlightColor,
            ),
            const SizedBox(
              height: AppPadding.defaultScreenPadding / 2,
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.12),
                ),
                child: Icon(
                  Icons.info,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.12),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              title: Text(
                'Information',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.12),
                ),
                child: Icon(
                  Icons.logout_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.all(
                  AppPadding.mediumPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.12),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              title: Text(
                'Log out',
                style: Theme.of(context).textTheme.titleMedium?.apply(
                      color: Theme.of(context).colorScheme.error,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

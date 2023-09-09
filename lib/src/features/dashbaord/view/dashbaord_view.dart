import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/src/constants/app_string.dart';
import 'package:login_app/src/features/dashbaord/dashboard_constants.dart';
import 'package:login_app/src/utils/theme/app_padding.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appTheme = Theme.of(context);
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
        leading: const Icon(Icons.menu),
        title: const Text(
          AppStrings.appName,
        ),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
        centerTitle: true,
        actions: [
          Container(
            width: 40,
            margin: const EdgeInsets.only(
              right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).cardColor,
            ),
            child: Image.asset(DashboardConstants.userProfileImage),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.defaultScreenPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey, Coding with T",
                style: textTheme.bodyLarge,
              ),
              Text(
                "Explore Courses",
                style: textTheme.headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              // *===================* //
              const SizedBox(
                height: AppPadding.defaultScreenPadding,
              ),
              // *===================* //
              Container(
                padding: const EdgeInsets.only(
                  left: AppPadding.defaultScreenPadding * .7,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 5,
                      color: appTheme.colorScheme.primary,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search...",
                      style: textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: appTheme.hintColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              // *===================* //
              const SizedBox(
                height: AppPadding.defaultScreenPadding,
              ),
              // *===================* //
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: appTheme.colorScheme.onBackground,
                          ),
                          child: Center(
                            child: Text(
                              "JS",
                              style: TextStyle(
                                color: appTheme.colorScheme.background,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Java Script",
                              style: textTheme.titleMedium,
                            ),
                            const Text(
                              "10 Lessons",
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    ),
                    Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: appTheme.colorScheme.onBackground,
                          ),
                          child: Center(
                            child: Text(
                              "HTML",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: appTheme.colorScheme.background,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HTML",
                              style: textTheme.titleMedium,
                            ),
                            const Text(
                              "10 Lessons",
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    ),
                    Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: appTheme.colorScheme.onBackground,
                          ),
                          child: Center(
                            child: Text(
                              "CSS",
                              style: TextStyle(
                                color: appTheme.colorScheme.background,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CSS",
                              style: textTheme.titleMedium,
                            ),
                            const Text(
                              "10 Lessons",
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    ),
                    Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: appTheme.colorScheme.onBackground,
                          ),
                          child: Center(
                            child: Text(
                              "JS",
                              style: TextStyle(
                                color: appTheme.colorScheme.background,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Java Script",
                              style: textTheme.titleMedium,
                            ),
                            const Text(
                              "10 Lessons",
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    ),
                  ],
                ),
              ),
              // *===================* //
              const SizedBox(
                height: AppPadding.defaultScreenPadding,
              ),
              // *===================* //
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: appTheme.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(
                        AppPadding.defaultScreenPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.bookmark),
                              Image.asset(
                                DashboardConstants.javascriptImage,
                                width: 50,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.defaultScreenPadding,
                          ),
                          Text(
                            "JS for Beginners",
                            style: textTheme.titleLarge,
                          ),
                          const Text("8 Lessons")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: AppPadding.defaultScreenPadding,
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: appTheme.cardColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(
                            AppPadding.defaultScreenPadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.bookmark),
                                  Image.asset(
                                    DashboardConstants.javascriptImage,
                                    width: 50,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: AppPadding.defaultScreenPadding,
                              ),
                              Text(
                                "JAVA",
                                style: textTheme.titleLarge,
                              ),
                              const Text("8 Lessons")
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text("View All")),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //*======================*//
              const SizedBox(
                height: AppPadding.defaultScreenPadding,
              ),
              //*======================*//
              Text(
                "Top Courses",
                style: textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppPadding.defaultScreenPadding,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: appTheme.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(
                        AppPadding.defaultScreenPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  "Flutter Crash Course",
                                  style: textTheme.headlineSmall,
                                ),
                              ),
                              Flexible(
                                child: Image.asset(
                                  DashboardConstants.javascriptImage,
                                  width: 50,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.defaultScreenPadding,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: Icon(
                              Icons.play_circle_filled,
                              size: 50,
                            ),
                            title: Text(
                              '3 Section',
                              style: textTheme.headlineSmall,
                            ),
                            subtitle: Text('Programming Languages'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: appTheme.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(
                        AppPadding.defaultScreenPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  "Flutter Crash Course",
                                  style: textTheme.headlineSmall,
                                ),
                              ),
                              Flexible(
                                child: Image.asset(
                                  DashboardConstants.javascriptImage,
                                  width: 50,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.defaultScreenPadding,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: Icon(
                              Icons.play_circle_filled,
                              size: 50,
                            ),
                            title: Text(
                              '3 Section',
                              style: textTheme.headlineSmall,
                            ),
                            subtitle: Text('Programming Languages'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: appTheme.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(
                        AppPadding.defaultScreenPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  "Flutter Crash Course",
                                  style: textTheme.headlineSmall,
                                ),
                              ),
                              Flexible(
                                child: Image.asset(
                                  DashboardConstants.javascriptImage,
                                  width: 50,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.defaultScreenPadding,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: Icon(
                              Icons.play_circle_filled,
                              size: 50,
                            ),
                            title: Text(
                              '3 Section',
                              style: textTheme.headlineSmall,
                            ),
                            subtitle: Text('Programming Languages'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppPadding.defaultScreenPadding,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

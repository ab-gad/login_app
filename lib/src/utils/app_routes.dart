import 'package:flutter/material.dart';

abstract class AppRoute {
  static const splashView = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';

  static void createAnimatedRoute(BuildContext context, Widget widget) {
    Navigator.of(context).push(_createAnimatedRoute(widget));
  }

  static PageRouteBuilder _createAnimatedRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

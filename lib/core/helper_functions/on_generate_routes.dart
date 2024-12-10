import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presenrarion/views/login_view.dart';
import 'package:fruit_hub/features/auth/presenrarion/views/singup_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_views.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
    case SingupView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SingupView(),
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}

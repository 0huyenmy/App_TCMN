import 'package:flutter/material.dart';
import 'package:journal_linker/screens/dashboard/dashboard_screen.dart';
import 'package:journal_linker/screens/login/login_screen.dart';
import 'package:journal_linker/screens/register/register_screen.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding1.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding2.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding3.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding4.dart';
import 'package:journal_linker/screens/splash/splash_screen.dart';

RouteFactory routes() {
  return (RouteSettings settings) {
    Widget screen = const SizedBox();

    var name = settings.name;

    switch (name) {
      case RouterName.initScreen:
      screen = const SplashScreen();
      //screen = const RegisterScreen();
        break;
      
      
      case RouterName.loginScreen:
        screen = const LoginScreen();
        break;
      case RouterName.dashboardScreen:
        screen = const DashboardScreen();
        break;
      case RouterName.onboarding:
        screen = const Onboarding();
        break;

      case RouterName.onboarding4:
        screen = const Onboarding4();
        break;
      case RouterName.registerScreen:
        screen = const RegisterScreen();
        break;
      default:
        screen = const LoginScreen();
      
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (context) => screen,
    );
  };
}

abstract class RouterName {
  static const String initScreen = '/';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String otpScreen = '/otp';
  static const String dashboardScreen = '/dashboardScreen';
  static const String onboarding = '/onboarding';
  static const String onboarding4 = '/onboarding4';
}

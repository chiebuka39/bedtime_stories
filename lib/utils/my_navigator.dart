import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }
  static void goToRegister(BuildContext context) {
    Navigator.pushNamed(context, "/register");
  }
  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }


}

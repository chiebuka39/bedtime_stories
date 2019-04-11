import 'package:flutter/material.dart';
import 'package:bedtime_stories/pages/home_screen.dart';
import 'package:bedtime_stories/pages/intro_screen.dart';
import 'package:bedtime_stories/pages/splash_screen.dart';
import 'package:bedtime_stories/pages/register.dart';
import 'package:bedtime_stories/pages/login_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/intro": (BuildContext context) => IntroScreen(),
  "/register": (BuildContext context) => RegisterPage(),
  "/login": (BuildContext context) => LoginScreen(),

};


void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.white, accentColor: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));

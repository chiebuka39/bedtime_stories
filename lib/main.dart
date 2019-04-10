import 'package:flutter/material.dart';
import 'package:bedtime_stories/pages/home_screen.dart';
import 'package:bedtime_stories/pages/intro_screen.dart';
import 'package:bedtime_stories/pages/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/intro": (BuildContext context) => IntroScreen(),
};


void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.deepPurpleAccent, accentColor: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));

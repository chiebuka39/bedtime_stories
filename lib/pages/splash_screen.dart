import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bedtime_stories/utils/bedtime.dart';
import 'package:bedtime_stories/utils/my_navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();

    Timer(Duration(seconds: 5), () => MyNavigator.goToIntro(context));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/splash_hng1.png"),

            fit: BoxFit.cover,
            colorBlendMode: BlendMode.multiply,
            color: Color.fromRGBO(15, 44, 112, 7.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image(
                        image: new AssetImage("assets/logo_hng2.png"),
                        height: _iconAnimation.value*140.0,
                        width: _iconAnimation.value*140.0,

                        //size: _iconAnimation.value * 100.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        Bedtime.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0),
                      )
                    ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

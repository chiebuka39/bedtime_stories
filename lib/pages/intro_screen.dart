import 'package:bedtime_stories/utils/bedtime.dart';
import 'package:flutter/material.dart';
import 'package:bedtime_stories/utils/my_navigator.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(

        styleTitle: new TextStyle(color: Colors.deepPurpleAccent, fontSize: 25.0),
        description: "Read free bedtime stories, fairy tales, poems  for kids and short stories for kids",
        styleDescription:new TextStyle(color: Colors.black87, fontSize: 15.0),
        pathImage: "assets/walk1.png",
        title: Bedtime.wt1,
        backgroundColor: Color(0xfff),
      ),
    );
    slides.add(
      new Slide(

        styleTitle: new TextStyle(color: Colors.deepPurpleAccent, fontSize: 25.0),
        description: "You can add your own bedtime stories, fairy tales, poems for kids and short kids",
        styleDescription:new TextStyle(color: Colors.black87, fontSize: 15.0),
        pathImage: "assets/picture1.jpg",
        title: Bedtime.wt2,
        backgroundColor: Color(0xfff),
      ),
    );

  }

  void onDonePress() {
    MyNavigator.goToRegister(context);
  }

  void onSkipPress() {
    MyNavigator.goToHome(context);
  }

  Widget renderSkipBtn() {
    return Text(
      "Skip",style: new TextStyle(color: Colors.deepPurpleAccent)
    );
  }
  Widget renderNextBtn() {
    return Text(
        "Next",style: new TextStyle(color: Colors.deepPurpleAccent)
    );
  }
  Widget renderDoneBtn() {
    return Text(
        "Done",style: new TextStyle(color: Colors.deepPurpleAccent)
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      //skip
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0xfff),
      //next
      renderNextBtn: this.renderNextBtn(),
      //done
      renderDoneBtn: this.renderDoneBtn(),
      colorDoneBtn: Color(0xfff),
      // Dot indicator
      colorDot: Color(0xfff4b42fd),
      colorActiveDot: Color(0xff1a11ca),
      sizeDot: 13.0,


    );
  }
}
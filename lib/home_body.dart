import 'package:flutter/material.dart';
import 'package:bedtime_stories/home_list.dart';
import 'package:bedtime_stories/bed_stories.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: HomeList())
      ],
    );
  }
}

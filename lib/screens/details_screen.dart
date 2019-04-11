import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String story;

  @override
  void initState() {
    story = 'In the city of the great king, there lived a boy that was miserable. His mother was long dead, and he lived with his wicked step mother who hated him for no reason. She would starve the poor boy and whip him with a rubber hose whenever her husband was not around.One day, the boy went up the hill to cry alone, and that was the day everything changed for him. The End...';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Detail', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/dragon.png'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                 
                  SizedBox(width: 300.0, 
                  child: 
                  Text('The legend of the dragon that fell from the sky',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),)),
                 
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0,15.0,0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('For Kids 6-9'),
                  IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {},)
                ],
              ),
            ),
            Padding(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 320, 
                  child: Text(story,textAlign: TextAlign.center,style: TextStyle(height: 1.2, fontSize: 16),))
                ],
              ), padding: EdgeInsets.all(15.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Add a comment', style: TextStyle(color: Color(0xFF4A59F7)),),
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.thumb_up,color: Color(0xFF4A59F7),), onPressed: () {}),
                      IconButton(icon: Icon(Icons.thumb_down), onPressed: () {},)
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
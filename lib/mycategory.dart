import 'package:bedtime_stories/pages/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bedtime_stories/bed_stories.dart';

class Mycategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //var deviceSize = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) =>  HomeScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
        ),
        title:
        new Text(
          'Category',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
        body: new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Card(

                elevation:10.0,
                child: new Image.asset(
                  "assets/picture3.png",
                  fit: BoxFit.cover,

                ),

          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
          ),


        ],
      ),
    ),

    );
  }
}

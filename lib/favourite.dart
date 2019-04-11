import 'package:bedtime_stories/pages/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bedtime_stories/bed_stories.dart';

class Favourite extends StatelessWidget {

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
            'Favourite',
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
              "assets/picture2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    new CircleAvatar(
                      backgroundColor: Colors.blueAccent,

                      child: new Image.asset(
                          "assets/acad5.jpg"

                      ),

                    ),
                    new SizedBox(
                      width: 2.0,
                    ),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          new Text("Fisrt Sory",style: new TextStyle(fontSize: 15.0),
                          ),
                          new Text("Good to be here oooooo", style: new TextStyle(fontSize: 10.0),
                          )
                        ]
                    ),

                  ],
                ),
                new Icon(Icons.thumb_up),
                new SizedBox(
                  width: 8.0,
                ),
                new Icon(Icons.thumb_down),
              ],
            ),
          ),

        ],
      ),
    ),
    );
  }
}

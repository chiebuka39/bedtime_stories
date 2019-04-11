import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bedtime_stories/bed_stories.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new BedStories(),
              height: deviceSize.height * 0.20,
            )
          :
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                new Card(
                  elevation:10.0,
                      child: new Image.asset(
                        "assets/picture1.jpg",
                        fit: BoxFit.cover,

                      ),


                    //padding: const EdgeInsets.all(10.0),

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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                new Text("Fisrt Sory",style: new TextStyle(fontSize: 15.0),
                                ),
                                new Text("Good to be here oooooo", style: new TextStyle(fontSize: 10.0),
                                )
                              ]
                          ),

                        ],
                      ),
                      new IconButton(icon: new Icon(Icons.favorite),
                        onPressed: (){},
                        color: Colors.grey,
                      ),
                      new IconButton(icon: new Icon(Icons.thumb_up),
                        onPressed: (){},
                        color: Colors.deepPurpleAccent,
                      ),
                      new SizedBox(
                        width: 1.0,
                      ),
                      new IconButton(icon: new Icon(Icons.thumb_down),
                        onPressed: (){},
                        color: Colors.grey,
                      ),


                    ],
                  ),
                ),

              ],
            ),
    );
  }
}

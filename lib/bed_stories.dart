import 'package:flutter/material.dart';

class BedStories extends StatelessWidget {

  final stories = Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => new Container(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
                index==0?

              new Container(
                width: 80.0,
                height: 80.0,
                child:new  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   new FloatingActionButton(
                backgroundColor: Colors.deepPurpleAccent,
                    child: new Icon(Icons.add),
                    onPressed: ()=>{},
                ),
                   new Text("Add Story",style: new TextStyle(fontSize: 10.0,color: Colors.black),)
                ],
                ),
               // margin: const EdgeInsets.symmetric(horizontal: 8.0),
              )

                :
                new Container(
                  width: 80.0,
                  height: 80.0,
                  child:new  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new CircleAvatar(

                        backgroundImage: new AssetImage("assets/acad5.jpg"),                              radius: 30.0,
                      ),
                      new Text("Post Story",style: new TextStyle(fontSize: 10.0,color: Colors.black),)
                    ],

                  ),



                  //margin: const EdgeInsets.symmetric(horizontal: 8.0),

                ),

              ],

            ),


      ),
    ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}

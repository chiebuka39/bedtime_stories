import 'dart:io';

import 'package:bedtime_stories/add_story.dart';
import 'package:bedtime_stories/favourite.dart';
import 'package:bedtime_stories/home_body.dart';
import 'package:bedtime_stories/mycategory.dart';
import 'package:bedtime_stories/pages/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bedtime_stories/utils/bedtime.dart';
import 'package:bedtime_stories/utils/my_navigator.dart';



class HomeScreen extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: new Text("Home"),
    leading: new Container(
      height: 40.0,
      width: 40.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage("assets/logo_hng2.png")
        ),
      ),
    ),

    actions: <Widget>[
      new IconButton(icon: new Icon(Icons.search),
        onPressed: (){},
      ),

      new IconButton(icon: new Icon(Icons.menu),
        onPressed: ()=>Draw()
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        theme:new ThemeData(
            primaryColor: defaultTargetPlatform==TargetPlatform.iOS
                ? Colors.grey[50]
                :null,
            primarySwatch: Colors.deepPurple
    ),
    home: new Draw(),
    /*routes: <String , WidgetBuilder>{
        "/a":(BuildContext context) => new NewPage("New Page"),

  }*/

    );
  }

  
}

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text("Home",style: new TextStyle(color: Colors.black87,fontSize: 15.0),),
        leading: new Container(
          height: 40.0,
          width: 40.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage("assets/profile.png")
            ),
          ),
        ),

        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
            color: Colors.black87,
            onPressed: (){},

          ),

          new IconButton(icon: new Icon(Icons.menu),
              onPressed: ()=>new Draw(),
            color: Colors.black87,
          ),
        ],

      ),


      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text(""), accountEmail: new Text(""),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Theme.of(context).platform==TargetPlatform.iOS
                    ?Colors.deepPurple
                    :Colors.white,
                backgroundImage: AssetImage("assets/profile.png"),

              ),
              otherAccountsPictures: <Widget>[
                new Row(
                  mainAxisAlignment:MainAxisAlignment.end,
          children: <Widget>[
                    new CircleAvatar(
                      backgroundColor: Theme.of(context).platform==TargetPlatform.iOS
                          ?Colors.deepPurple
                          :Colors.white,

                      child: new Text("X",style: new TextStyle(fontSize: 12.0),),
                    )
                  ],
                ),

              ],
            ),

            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
              onTap:(){
                Navigator.of(context).pop();

              },

            ),
            new ListTile(
              title: new Text("Add Strory"),
              trailing: new Icon(Icons.add_circle),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context)=>
                    new AddStoryPage()));
              },
            ),
            new Divider(

            ),
            new ListTile(
              title: new Text("Bookmark"),
              trailing: new Icon(Icons.bookmark),
              onTap:() {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context)=>
                new Favourite()));
              }

            ),
            new ListTile(
                title: new Text("Favourite"),
                trailing: new Icon(Icons.favorite),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context)=>
                      new Favourite()));
                }

            ),
            new ListTile(
              title: new Text("Category"),
              trailing: new Icon(Icons.category),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context)=>
                    new Mycategory()));
              },

            ),
      new ListTile(
        title: new Text("Profile"),
        trailing: new Icon(Icons.face),
        onTap: (){
          Navigator.of(context).pop();
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context)=>
              new ProfilePage()));
        },
      ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();

              },

            ),
            new ListTile(
              title: new Text("Log Out"),
              trailing: new Icon(Icons.close),
              onTap: ()=>exit(0),
            ),
          ],
        ),
      ),
      body: new HomeBody(),

    );

  }

  }




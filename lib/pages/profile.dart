
import 'package:bedtime_stories/pages/home_screen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.only(top:33.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                  width: 190.0,
                  height: 190.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/profile.png')))),
                              SizedBox(height: 25.0,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 45.0,
                          ),
                          Text(
                            'Danny Johnson',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 31.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 45.0,
                          ),
                          Text(
                            'djohn@hotmail.com',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 31.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Phone No',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '+2348076655489',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

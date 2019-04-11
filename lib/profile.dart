import 'package:flutter/material.dart';
import 'package:legend_login/add_story.dart';

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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => AddStoryPage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'Profile',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 250.0,
              width: 250.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  // borderRadius: BorderRadius.circular(100.0),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/1.jpeg',
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
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
    );
  }
}

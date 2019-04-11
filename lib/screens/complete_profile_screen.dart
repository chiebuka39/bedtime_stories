import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  @override
  _CompleteProfileScreenState createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Complete Profile',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 15.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                    width: 180.0,
                    child: Text(
                      'Register via your email to connect with other users stories',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0, fontWeight: FontWeight.normal),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/camera.png',
                  width: 80.0,
                ),
                Text('Add Profile picture')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Frist Name', enabledBorder: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Last Name', enabledBorder: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  enabledBorder: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 50.0),
            child: Container(
              alignment: Alignment.center,
              height: 60.0,
              width: double.infinity,
              child: Text('Register', style: TextStyle(fontSize: 17.0, color: Colors.white),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.3, 1],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Color.fromRGBO(67, 161, 247, 1),

                    Color.fromRGBO(168, 117, 255, 1),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:legend_login/profile.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 10.0, right: 15.0, bottom: 10.0, left: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        image: DecorationImage(
                            image: AssetImage('assets/1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Welcome Team Legend',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 105.0,
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.grey,
                  iconSize: 24.0,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 18.0),
              child: Text(
                'Add New Story',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0),
              child: Text(
                'Content',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff535D7E)),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 150.0),
                    hintText: 'And the fish happened to grow wings...',
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffDADAED), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffDADAED), width: 1.0))),
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Color(
                            (0xFF39A1F7),
                          ),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      //The Discard button should return back to the home screen when clicked
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Text(
                        'Discard',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff39A1F7),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:legend_login/content.dart';
import 'package:legend_login/profile.dart';

class AddStoryPage extends StatefulWidget {
  @override
  _AddStoryPageState createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
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
                'Title',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff535D7E)),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffDADAED), width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffDADAED), width: 1.0))),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0),
              child: Text(
                'Cover Image',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff535D7E)),
              ),
            ),
          ),
          SizedBox(
            height: 17.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffe5e5e5),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Text(
                        'Upload Image',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    // decoration: BoxDecoration(
                    //     color: Colors.transparent,
                    //     borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'No image Uploaded',
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff535D7E)),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 380 / 2,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ContentPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Color(
                            (0xFF39A1F7),
                          ),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Text(
                        'Type Content',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
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

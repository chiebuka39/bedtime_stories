import 'package:bedtime_stories/add_story.dart';
import 'package:bedtime_stories/pages/home_screen.dart';
import 'package:bedtime_stories/pages/profile.dart';
import 'package:bedtime_stories/utils/my_navigator.dart';
import 'package:flutter/material.dart';


class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) =>  AddStoryPage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
        ),
        title:
        new Text(
          'Add Content',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
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
                            image: AssetImage('assets/profile.png'),
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
         Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10.0, ),
            child: new Container(
              //   height: 200.0,
              decoration:
                  new BoxDecoration(border: new Border.all(color: Color(0xffDADAED)),
                  borderRadius: BorderRadius.circular(4.0)
                  ),

              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: new TextField(
                    maxLines: 20,
                    style: new TextStyle(
                        fontSize: 16.0,
                        // height: 2.0,
                        color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: "And the fish happened to grow wings...",                      
                      contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                    )),
              ),
            ),
          ),

          
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: GestureDetector(
                    //this handles the push request
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
                    onTap:()=>HomeScreen(),
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

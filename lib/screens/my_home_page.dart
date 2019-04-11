import 'package:bedtime_stories/add_story.dart';
import 'package:bedtime_stories/register.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(12.0, 78.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 73.0,
                  width: 73.0,
                )),
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
                    child: Text(
                      'Login to your account, to start reading your',
                      style: TextStyle(
                        color: Color(0xFFA9AEBE),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 100.0, 0.0, 0.0),
                    child: Text(
                      'story',
                      style: TextStyle(
                        color: Color(0xFFA9AEBE),
                        fontSize: 14.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, right: 0.0, top: 0.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff535D7E)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffDADAED), width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffDADAED),
                                          width: 1.0))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, right: 0.0, top: 0.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff535D7E)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffDADAED), width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffDADAED),
                                          width: 1.0))),
                              obscureText: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27.0,
                  ),
                  Container(
                    height: 1.0,
                    width: 277.0,
                    color: Color(0xff979797),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Container(
                    child: Text(
                      'Dont have an account?',
                      style: TextStyle(color: Color(0xffA4A4BD), fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Color(0xff718CFB),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39.0,
                  ),
                  Container(
                    height: 48.0,
                    width: 311.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(4.0),
                      shadowColor: Color(0xff39A1F7),
                      color: Color(0xff39A1F7),
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddStoryPage()));
                        },
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

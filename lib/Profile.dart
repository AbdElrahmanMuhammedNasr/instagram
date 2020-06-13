import 'package:flutter/material.dart';
import 'package:instegram/common/AppBarForm.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarF(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 250,
                        // color: Colors.amber,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Following',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1200',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'follower',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '120',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Posts',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1200',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FlatButton(
                              onPressed: () {
                                print('follow');
                              },
                              child: Text('Follow'),
                              color: Colors.blue,
                              colorBrightness: Brightness.dark,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                          Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.fill,
                            width: 120,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
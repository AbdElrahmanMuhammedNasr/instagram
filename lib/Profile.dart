import 'package:flutter/material.dart';
import 'package:instegram/PostDetails.dart';
import 'package:instegram/common/AppBarForm.dart';

class Profile extends StatefulWidget {
  String userImage;
  String userName;
  Profile({this.userImage, this.userName});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> images = [
    '1.jpg',
    '8.jpg',
    '3.jpg',
    '4.jpg',
    '7.jpg',
    '8.jpg',
    '4.jpg'
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarF(
          profileUser: widget.userName,
        ),
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
                                      style: TextStyle(
                                          fontSize: 20, fontFamily: 'Raleway'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1200',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Raleway'),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'follower',
                                      style: TextStyle(
                                          fontSize: 20, fontFamily: 'Raleway'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '120',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Raleway'),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Posts',
                                      style: TextStyle(
                                          fontSize: 20, fontFamily: 'Raleway'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1200',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Raleway'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5)),
                                  onPressed: () {
                                    print('send ');
                                  },
                                  child: Text('send'),
                                  color: Colors.blue,
                                  colorBrightness: Brightness.dark,
                                ),
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5)),
                                  onPressed: () {
                                    print('follow');
                                  },
                                  child: Text('Follow'),
                                  color: Colors.blue,
                                  colorBrightness: Brightness.dark,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('images/${widget.userImage}'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      _profilePost(
                          widget.userImage, context, '1.jpg', '4.jpg', '3.jpg'),
                      SizedBox(
                        height: 5,
                      ),
                      _profilePost(
                          widget.userImage, context, '4.jpg', '4.jpg', '3.jpg'),
                      SizedBox(
                        height: 5,
                      ),
                      _profilePost(
                          widget.userImage, context, '8.jpg', '1.jpg', '3.jpg'),
                      SizedBox(
                        height: 5,
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

Widget _profilePost(userImage, context, image, image1, image2) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Postdetails(
                user: userImage,
                post: image,
                like: 20,
                posted: new DateTime.now().toString(),
              ),
            ));
          },
          child: Image.asset(
            'images/${image}',
            fit: BoxFit.fill,
            width: 120,
            height: 120,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Postdetails(
                user: userImage,
                post: image1,
                like: 20,
                posted: new DateTime.now().toString(),
              ),
            ));
          },
          child: Image.asset(
            'images/${image1}',
            fit: BoxFit.fill,
            width: 120,
            height: 120,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Postdetails(
                user: userImage,
                post: image2,
                like: 20,
                posted: new DateTime.now().toString(),
              ),
            ));
          },
          child: Image.asset(
            'images/${image2}',
            fit: BoxFit.fill,
            width: 120,
            height: 120,
          ),
        )
      ]);
}

import 'package:flutter/material.dart';
import 'package:instegram/PostDetails.dart';
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';
import 'package:instegram/posts.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBarF(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int pos) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/${pos + 1}.jpg'),

                        ),
                      );
                    }),
              ),
              new Posts(user: 'm.jpg', post: '2.jpg'),
              new Posts(user: 'a.jpg', post: '2.jpg'),
              new Posts(user: 'a.jpg', post: '8.jpg'),
              new Posts(user: 'a.jpg', post: 'a.jpg'),
              new Posts(user: 'm.jpg', post: '1.jpg'),
            ],
          ),
        ),
        bottomNavigationBar: BottomBarF(),
      ),
    );
  }
}

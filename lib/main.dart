import 'package:flutter/material.dart';
import 'package:instegram/PostDetails.dart';
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';
import 'package:instegram/posts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBarF(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Posts(user:'m.jpg',post: '5.jpeg'),
              new Posts(user:'a.jpg',post: '2.jpg'),
              new Posts(user:'a.jpg',post: '8.jpg'),
              new Posts(user:'a.jpg',post: 'a.jpg'),
              new Posts(user:'m.jpg',post: '1.jpg'),
              // new Postdetails().build('m.jpg', '5.jpeg'),
            ],
          ),
        ),
        bottomNavigationBar: BottomBarF(),
      ),
    );
  }
}

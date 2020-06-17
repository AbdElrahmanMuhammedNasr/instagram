import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instegram/PostDetails.dart';
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';
import 'package:instegram/posts.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  void getmessage() async {
    // Stirng x = await
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> userPost = [
    {'user': 'm.jpg', 'post': '1.jpg','name':'AbdElraham','likes':10000},
    {'user': 'a.jpg', 'post': 'a.jpg','name':'Mostafa','likes':1},
    {'user': 'm.jpg', 'post': '7.jpg','name':'AbdElraham','likes':1},
    {'user': 'a.jpg', 'post': '8.jpg','name':'AbdElraham','likes':1},
    {'user': 'm.jpg', 'post': '7.jpg','name':'Mostafa','likes':1},
    {'user': 'a.jpg', 'post': '8.jpg','name':'Mostafa','likes':1},
  ];

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
                    itemCount: 8,
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

              Column(
                  children: userPost
                      .map((e) => new Posts(
                            user: e['user'],
                            post: e['post'],
                            name: e['name'],
                            likes:e['likes']
                          ))
                      .toList()),

            ],
          ),
        ),
        bottomNavigationBar: BottomBarF(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';
import 'package:instegram/posts.dart';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  // void getposts() async {
  //   print('i am here');
  //   // String url = 'http://localhost:8080/PostsApi/getAllPosts' ;
  //   String url = 'http://localhost:3100/get-books' ;

  //   await http.get(url)
  //         .then((value) => print('value'))
  //         .catchError(()=> print("Error"));
  // }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //  widget.getposts();
    super.initState();
  }

  List<Map<String, dynamic>> userPost = [
      {
      'userImage': 'a.jpg',
      'post': 'elfar.jpg',
      'name': 'AdElrahman Nasr',
      'job':'PH',
      'likes': 100,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'a.jpg',
      'post': 'badawy.jpg',
      'name': 'Mostafa',
      'job':'PH',
      'likes': 10,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'm.jpg',
      'post': '1.jpg',
      'name': 'AbdElraham',
      'job':'ED',
      'likes': 10000,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'a.jpg',
      'post': 'a.jpg',
      'name': 'Mostafa',
      'job':'ED',
      'likes': 1,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'm.jpg',
      'post': '7.jpg',
      'name': 'AbdElraham',
      'job':'PH',
      'likes': 1,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'a.jpg',
      'post': '8.jpg',
      'name': 'AbdElraham',
      'job':'PH',
      'likes': 1,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'm.jpg',
      'post': '7.jpg',
      'name': 'Mostafa',
      'job':'PH',
      'likes': 1,
      'posted': new DateTime.now()
    },
    {
      'userImage': 'a.jpg',
      'post': '8.jpg',
      'name': 'Mostafa',
      'job':'ED',
      'likes': 1,
      'posted': new DateTime.now()
    },
  
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
                margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int pos) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [
                                    Colors.red,
                                    Colors.blue,
                                    Colors.purple
                                  ])),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('images/${pos + 1}.jpg'),
                          ),
                        ),
                      );
                    }),
              ),
              Column(
                  children: userPost
                      .map((e) => new Posts(
                          userImage: e['userImage'],
                          post: e['post'],
                          name: e['name'],
                          job: e['job'],
                          likes: e['likes'],
                          posted: e['posted'].toString()))
                      .toList()),
            ],
          ),
        ),
        bottomNavigationBar: BottomBarF(),
      ),
    );
  }
}

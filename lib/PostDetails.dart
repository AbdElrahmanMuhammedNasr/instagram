import 'package:flutter/material.dart';
import 'package:instegram/comment.dart';
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';

class Postdetails extends StatefulWidget {
  String user;
  String post;
  double mainImageHeaight = 400;

  Postdetails({this.user, this.post});

  @override
  _PostdetailsState createState() => _PostdetailsState();
}

class _PostdetailsState extends State<Postdetails> {
  final comment = new TextEditingController();

  List<Map<String, String>> comments = [
    {'user': 'Tamer', 'image': '1.jpg', 'comt': 'this is great pic'},
    {'user': 'Ali', 'image': 'm.jpg', 'comt': 'this is great pic'},
    {'user': 'Hassan', 'image': 'a.jpg', 'comt': 'this is great pic'},
    // {'user': 'Abdo', 'image': 'a.jpg', 'comt': 'this is great pic'},
    // {'user': 'said', 'image': 'm.jpg', 'comt': 'this is great pic'}
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarF(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                // IconButton(
                                //     icon: Icon(Icons.arrow_back),
                                //     onPressed: () {
                                //       Navigator.pop(context);
                                //     }),
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/${widget.user}'),
                                  ),
                                  title: Text('Abdo Nasr'),
                                  subtitle: Text("5 min"),
                                  trailing: IconButton(
                                      icon: Icon(Icons.more_horiz),
                                      onPressed: () {
                                        print('more');
                                      }),
                                ),
                                Stack(children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    width: double.infinity,
                                    height: widget.mainImageHeaight,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/${widget.post}'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  // Positioned(
                                  // top: widget.mainImageHeaight-20,
                                  // left: 15,
                                  // child: Row(children: <Widget>[
                                  //   Icon(Icons.favorite_border,color: Colors.red, size: 20,),
                                  //   Text('200'),
                                  // ],), ),
                                ]),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.favorite_border,
                                          // color: Colors.red,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text('200 likes'),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.chat,
                                          // color: Colors.red,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text('200 comments'),
                                      ],
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: comments.length == 0 ? 0 : 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: comments
                              .map(
                                (e) => new Comment(
                                    image: e['image'],
                                    user: e['user'],
                                    comt: e['comt']),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      child: TextField(
                        controller: comment,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('images/${widget.user}'),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              setState(() {
                                comments.add({
                                  'user': 'tamer',
                                  'image': widget.user,
                                  'comt': comment.text
                                });
                                comment.text = '';
                              });
                            },
                          ),
                          hintText: 'add a comment',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



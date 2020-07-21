import 'package:flutter/material.dart';
import 'package:instegram/comment.dart';
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';

class Postdetails extends StatefulWidget {
  String userImage;
  String name;
  String post;
  int like;
  String posted;
  double mainImageHeaight = 250;

  Postdetails({this.userImage, this.post, this.like, this.posted, this.name});

  @override
  _PostdetailsState createState() => _PostdetailsState();
}

class _PostdetailsState extends State<Postdetails> {
  final comment = new TextEditingController();

  List<Map<String, String>> comments = [
    {'user': 'Tamer', 'image': '1.jpg', 'comt': 'this is great pic'},
    {'user': 'badawy', 'image': 'badawy.jpg', 'comt': 'this is great pic'},
    {'user': 'Hassan', 'image': 'hassan.jpg', 'comt': 'this is great pic'},
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
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/${widget.userImage}'),
                                  ),
                                  title: Text("${widget.name}"),
                                  subtitle:
                                      Text("${widget.posted.substring(0, 16)}"),
                                  trailing: IconButton(
                                      icon: Icon(Icons.more_horiz),
                                      onPressed: () {
                                        print('more');
                                      }),
                                ),
                                /////////////////////////////////////////////////////////////////////////
                                Container(
                                  margin: EdgeInsets.all(5),
                                  width: double.infinity,
                                  height: widget.mainImageHeaight,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/${widget.post}'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //////////////////////////////////////////////////////////////
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  // children: <Widget>[
                                  //   Row(
                                  //     children: <Widget>[
                                  //       IconButton(
                                  //           icon: widget.likeDone
                                  //               ? Icon(
                                  //                   Icons.favorite,
                                  //                   color: Colors.red,
                                  //                 )
                                  //               : Icon(
                                  //                   Icons.favorite_border,
                                  //                   color: Colors.black38,
                                  //                 ),
                                  //           iconSize: 20,
                                  //           onPressed: () {
                                  //             setState(() {
                                  //               if (widget.likeDone) {
                                  //                 widget.like -= 1;
                                  //               } else {
                                  //                 widget.like += 1;
                                  //               }
                                  //               widget.likeDone =
                                  //                   !widget.likeDone;
                                  //             });
                                  //           }),
                                  //       SizedBox(
                                  //         width: 7,
                                  //       ),
                                  //       Text('${widget.like} likes'),
                                  //     ],
                                  //   ),
                                  //   Row(
                                  //     children: <Widget>[
                                  //       Icon(
                                  //         Icons.chat,
                                  //         // color: Colors.red,
                                  //         size: 20,
                                  //       ),
                                  //       SizedBox(
                                  //         width: 7,
                                  //       ),
                                  //       Text('${comments.length} comments'),
                                  //     ],
                                  //   ),
                                  // ],
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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                      child: Container(
                        height: 400,
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
                  ),
                  /////////////////////////////////////////////////////////////////
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
                                  AssetImage('images/${widget.userImage}'),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              setState(() {
                                comments.add({
                                  'user': 'tamer',
                                  'image': widget.userImage,
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

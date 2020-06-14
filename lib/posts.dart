import 'package:flutter/material.dart';
import 'package:instegram/PostDetails.dart';
import 'package:instegram/Profile.dart';

class Posts extends StatefulWidget {
  String user;
  String post;
  String name;
  Posts({this.user, this.post,this.name});

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool book = false;
  bool love = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              // height: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 15.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Profile(userImage:'images/${widget.user}' ,),
                          ));
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/${widget.user}'),
                        ),
                      ),
                      title: Text(widget.name),
                      subtitle: Text("5 min"),
                      trailing: IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: () {
                            _showOptions();
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          love = !love;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/${widget.post}'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                  icon: love
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          color: Colors.black38,
                                        ),
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {
                                      love = !love;
                                    });
                                  }),
                              Text("2120 "),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.chat,
                                    color: Colors.blue,
                                  ),
                                  iconSize: 30,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => Postdetails(
                                                  user: widget.user,
                                                  post: widget.post,
                                                )));
                                  }),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                  icon: book
                                      ? Icon(
                                          Icons.bookmark,
                                          color: Colors.blue,
                                        )
                                      : Icon(
                                          Icons.bookmark_border,
                                          color: Colors.black38,
                                        ),
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {
                                      book = !book;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showOptions() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            margin: EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton.icon(
                  color: Colors.blueGrey[500],
                  onPressed: () {},
                  colorBrightness: Brightness.dark,
                  icon: Icon(Icons.remove_circle),
                  label: Text(
                    'Hide',
                    style: TextStyle(letterSpacing: 1),
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.blueGrey[600],
                  onPressed: () {},
                  colorBrightness: Brightness.dark,
                  icon: Icon(Icons.report),
                  label: Text(
                    'Report',
                    style: TextStyle(letterSpacing: 1),
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.blueGrey[700],
                  onPressed: () {},
                  colorBrightness: Brightness.dark,
                  icon: Icon(Icons.remove_red_eye),
                  label: Text(
                    'UnFollow',
                    style: TextStyle(letterSpacing: 1),
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.red,
                  onPressed: () {},
                  colorBrightness: Brightness.dark,
                  icon: Icon(Icons.block),
                  label: Text(
                    'Block',
                    style: TextStyle(letterSpacing: 1),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

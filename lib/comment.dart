import 'package:flutter/material.dart';
import 'package:instegram/Profile.dart';

class Comment extends StatefulWidget {
  String image;
  String user;
  String comt;

  Comment({this.image, this.user, this.comt});

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool userLike = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Column(children: <Widget>[
        ListTile(
          leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => new Profile(
                      userImage: widget.image, userName: widget.user),
                ),
              );
            },
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/${widget.image}'),
            ),
          ),
          title: Text('${widget.user}'),
          subtitle: Text("${widget.comt}"),
          trailing: IconButton(
              icon: userLike == false
                  ? Icon(Icons.favorite_border)
                  : Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
              iconSize: 17,
              onPressed: () {
                setState(() {
                  userLike = !userLike;
                });
              }),
        ),
        // Divider(color: Colors.black12),
      ]),
    );
  }
}

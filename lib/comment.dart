import 'package:flutter/material.dart';

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
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('images/${widget.image}'),
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
    );
  }
}

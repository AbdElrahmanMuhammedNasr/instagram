import 'package:flutter/material.dart';
import 'package:instegram/PostDetails.dart';

class Posts extends StatelessWidget {
  String user;
  String post;
  Posts({this.user, this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 15.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/${user}'),
                      ),
                      title: Text('Abdo Nasr'),
                      subtitle: Text("5 min"),
                      trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: () {
                            print('more');
                          }),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Postdetails(user: user,post: post,)));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/${post}'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.favorite_border),
                                iconSize: 30,
                                onPressed: () {
                                  print('object');
                                }),
                            Text("2120"),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                icon: Icon(Icons.chat),
                                iconSize: 30,
                                onPressed: () {
                                  print('object');
                                }),
                            Text("212"),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.bookmark_border),
                                iconSize: 30,
                                onPressed: () {
                                  print('object');
                                }),
                          ],
                        ),
                      ],
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
}

import 'package:flutter/material.dart';
import 'package:instegram/common/AppBarForm.dart';
import 'package:instegram/common/BottomBarform.dart';

class Postdetails extends StatefulWidget {
  String user;
  String post;
  Postdetails({this.user, this.post});

  @override
  _PostdetailsState createState() => _PostdetailsState();
}

class _PostdetailsState extends State<Postdetails> {
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
                                Container(
                                  margin: EdgeInsets.all(5),
                                  width: double.infinity,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/${widget.post}'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
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
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            _comment(
                                user: 'Tamer',
                                image: '2.jpg',
                                comt: 'beautiful'),
                            _comment(
                                user: 'Ali',
                                image: '4.jpg',
                                comt: 'Your ara awsome'),
                            _comment(
                                user: 'Hassan',
                                image: 'a.jpg',
                                comt: 'beautiful'),
                            _comment(
                                user: 'Said',
                                image: '8.jpg',
                                comt: 'Dm Please'),
                            _comment(
                                user: 'Said',
                                image: '8.jpg',
                                comt: 'Dm Please'),
                            _comment(
                                user: 'Said',
                                image: '8.jpg',
                                comt: 'Dm Please'),
                          ],
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
                              print("object");
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

Widget _comment({String user, String image, String comment, String comt}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
    child: ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('images/${image}'),
      ),
      title: Text('${user}'),
      subtitle: Text("${comt}"),
      trailing: IconButton(
          icon: Icon(Icons.favorite_border),
          iconSize: 17,
          onPressed: () {
            print('more');
          }),
    ),
  );
}

import 'package:flutter/material.dart';

class AppBarF extends StatelessWidget with PreferredSizeWidget {

  String profileUser ;
  AppBarF({this.profileUser});

  @override
  Widget build(BuildContext context) {
    return profileUser !=null? 
    Container(
      height: 65,
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          profileUser,
          style: TextStyle(
            fontFamily: 'Billabong',
            fontWeight: FontWeight.w300,
            letterSpacing: 2,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.format_align_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
       
      ),
    ): Container(
      height: 70,
      child: AppBar(
        
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontWeight: FontWeight.w300,
            letterSpacing: 2,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.send,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.live_tv,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

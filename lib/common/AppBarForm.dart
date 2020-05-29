import 'package:flutter/material.dart';

class AppBarF extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

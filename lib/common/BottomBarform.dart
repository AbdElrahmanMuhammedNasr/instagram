import 'package:flutter/material.dart';

class BottomBarF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
            BottomNavigationBarItem(
                icon: FlatButton(
                  color: Color(0xFF23B66F),
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text('')),
          ],
          type: BottomNavigationBarType.fixed,
        );
  }
}
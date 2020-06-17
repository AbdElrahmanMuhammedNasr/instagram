import 'package:flutter/material.dart';

class BottomBarF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), title: Text('Dashboard')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: FlatButton(
                color: Color(0xFF23B66F),
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(vertical: 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              title: Text('Add')),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), title: Text('Save')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Profile')),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int x){
          print('object $x');
        },
      ),
    );
  }
}

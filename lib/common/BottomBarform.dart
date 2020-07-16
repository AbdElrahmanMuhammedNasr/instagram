import 'package:flutter/material.dart';
import 'package:instegram/Home.dart';
import 'package:instegram/Profile.dart';

class BottomBarF extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    _goToPage(number) {
    switch (number) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyApp()));
        break;
      case 1:
        print(1);
        break;
      case 2:
        print(2);
        break;
      case 3:
        print(3);
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Profile(
            userImage: 'a.jpg',
            userName: 'Abdo',
          ),
        ));
        break;
    }
  }
    return Container(
      height: 80,
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
        onTap: (int x) {
          _goToPage(x);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.black54,
      iconSize: 28.0,
      selectedFontSize: 16.0,
      unselectedFontSize: 15.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Category'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favorites'),
        ),
        // BottomNavigationBarItem(
        //   icon: CircleAvatar(
        //     radius: 16.0,
        //     backgroundImage: AssetImage('images/profilepic.jpg'),
        //   ),
        //   title: Text('Profile'),
        // ),
      ],
      onTap: (int value) {
        setState(() {
          _currentIndex = value;
        });
      },
    );
  }
}

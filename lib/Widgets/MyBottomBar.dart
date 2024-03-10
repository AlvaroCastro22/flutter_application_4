import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm, color: Colors.black), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black), label: "Like"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black), label: "User")
        ]);
  }
}

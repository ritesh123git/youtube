import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget{
  const BottomNavigation({super.key});
  @override
  Widget build(context){
    return  BottomNavigationBar(
      backgroundColor: Colors.black,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.explore),
    label: 'Explore',
    backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.subscriptions_sharp),
    label: 'Subscription',
    backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.video_library_sharp),
    label: 'Library',
    backgroundColor: Colors.black,
    ),
    ],
    selectedItemColor: Colors.white,
    );
  }
}
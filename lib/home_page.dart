import 'package:flutter/material.dart';

import 'package:instraui/account.dart';
//import 'package:instraui/pages/account.dart';
import 'package:instraui/pages/home.dart';
import 'package:instraui/pages/reels.dart';
import 'package:instraui/pages/search.dart';
import 'package:instraui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBox = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedBox = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    var type;
    return Scaffold(
      // appBar: AppBar(
      // title: Text('HomePage'),
      //  ),
      body: _children[_selectedBox],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBox,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:coba_utsa/post/home_page.dart';
import 'package:coba_utsa/post/profile.dart';
import 'package:coba_utsa/post/favorit.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _selectTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      MyHomePage(),
      favorit(),
      profile(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.bookmark), label: "Favorit"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded), label: "Profil"),
    ];

    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.green,
      items: _bottomNavBarItems,
      currentIndex: _selectTabIndex,
      unselectedItemColor: Colors.blue,
      selectedItemColor: Colors.white,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      body: Center(
        child: _listPage[_selectTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}

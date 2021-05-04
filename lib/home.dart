
import 'package:bottom_navigation/pages/list_movie.dart';
import 'package:bottom_navigation/pages/user.dart';
import 'package:bottom_navigation/pages/home_naviagation.dart';
import 'package:bottom_navigation/pages/reminders.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
 
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;

  List _listPages = List();

  Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages
    ..add(HomeNaviagate())
    ..add(DetailMovie())
    ..add(User())
    ..add(Reminders());
    _currentPage = HomeNaviagate();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch'),
        backgroundColor: Colors.black38,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
      ),
      body: SafeArea(
        child: _currentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            title: Text('ListMovie'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            title: Text('User'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms),
            title: Text('Remianders'),
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}



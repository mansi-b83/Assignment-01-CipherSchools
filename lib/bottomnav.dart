import 'package:assignment/coursepage.dart';
import 'package:assignment/homepage.dart';
import 'package:assignment/profilepage.dart';
import 'package:assignment/trending.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {

  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  bool? stateval;

  static const List<Widget> _widgetOptions = <Widget>[
    // Text('hello'),
    // Text('Account'),
    HomePage(),
    CoursePage(),
    TrendingPage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    // bool stateval = widget.state;
    return Scaffold(
      body:
          Container(
            child: _widgetOptions[_selectedIndex],
          ),
      // bottomNavigationBar: _customBtmNav(),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 100,
        // backgroundColor: Colors.orange,
        type: BottomNavigationBarType.fixed,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              // color: Colors.black,
            ),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_array),
            label: 'Courses',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_sharp),
            label: 'Trending',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
            // backgroundColor: Colors.green,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index){
          setState((){
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

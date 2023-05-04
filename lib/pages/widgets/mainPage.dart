import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lmsapp/pages/courses.dart';
import 'package:lmsapp/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:lmsapp/pages/listcourses.dart';
import 'package:lmsapp/pages/profile.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    MyCourses(),
    ListCourses(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            backgroundColor: Color.fromARGB(255, 0, 62, 109),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'My Courses',
            backgroundColor: Color.fromARGB(255, 0, 62, 109),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Courses',
            backgroundColor: Color.fromARGB(255, 0, 62, 109),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 0, 62, 109),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromARGB(255, 138, 138, 138),
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

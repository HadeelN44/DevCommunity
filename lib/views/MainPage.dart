import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/Dashboard.dart';
import 'package:community_dev/views/Profile.dart';
import 'package:community_dev/views/TimeLine/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Timeline(),
    Timeline(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_timeline),
              label: 'Timeline',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.podcasts_rounded),
              label: 'Researchs',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_crop_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: colors.primary,
          unselectedItemColor: colors.icons,
          onTap: _onItemTapped,
        ));
  }
}

import 'package:community_dev/Servises/FireBase/challenge.dart';
import 'package:community_dev/Servises/NewsApi/NewsAPI.dart';
import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/Dashboard.dart';
import 'package:community_dev/views/Registry/SignIn.dart';
import 'package:community_dev/views/Team.dart';
import 'package:community_dev/views/profile/Profile.dart';
import 'package:community_dev/views/Teams.dart';
import 'package:community_dev/views/Teams/body.dart';
import 'package:community_dev/views/Timeline2/TimelineScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    TimelineScreen(
      isMyPost: false,
    ),
    //teamss(),
    Teams(),
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_timeline),
              label: 'Timeline',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_3_fill),
              label: 'Teams',
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

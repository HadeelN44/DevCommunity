import 'package:community_dev/views/TimeLine/body.dart';
import 'package:flutter/material.dart';
import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/dashboard/Dashboard.dart';
import 'package:community_dev/views/profile/Profile.dart';
import 'package:community_dev/views/Teams.dart';
import 'package:community_dev/views/Teams/body.dart';

import 'package:community_dev/views/Timeline2/TimelineScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    teamss(),
    const TimelineScreen(
      isMyPost: false,
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.fields,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: colors.fields.withOpacity(0.6),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: colors.backgroundcolor,
              hoverColor: Color.fromARGB(255, 0, 0, 0),
              gap: 8,
              activeColor: colors.primary,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,
              color: Colors.white,
              tabs: [
                GButton(
                  icon: Icons.home,
                  // text: 'Home',
                ),
                GButton(
                  icon: LineIcons.userFriends,
                  // text: 'Teams',
                ),
                GButton(
                  icon: Icons.timeline_sharp,
                  //  text: 'TimeLine',
                ),
                GButton(
                  icon: LineIcons.user,
                  //  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

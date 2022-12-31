import 'package:community_dev/views/Teams/TeamsScreen.dart';
import 'package:flutter/material.dart';
import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/DashboardScreen.dart';
import 'package:community_dev/views/profile/Profile.dart';
import 'package:community_dev/views/Teams.dart';

import 'package:community_dev/views/Timeline/TimelineScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HouseScreen extends StatefulWidget {
  @override
  HouseScreenState createState() => HouseScreenState();
}

class HouseScreenState extends State<HouseScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardSecond(),
    teamss(),
    const TimelineScreen(
      isMyPost: false,
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: colors.fields,
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
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: GNav(
                curve: Curves.easeInBack,
                gap: 8,
                activeColor: colors.primary,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                color: Colors.white,
                tabs: [
                  GButton(
                    icon: Icons.home_rounded,
                    // text: 'Home',
                  ),
                  GButton(
                    icon: CupertinoIcons.person_3_fill,
                    // text: 'Teams',
                  ),
                  GButton(
                    icon: Icons.view_timeline,
                    //  text: 'TimeLine',
                  ),
                  GButton(
                    icon: CupertinoIcons.person_fill,
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
      ),
    );
  }
}

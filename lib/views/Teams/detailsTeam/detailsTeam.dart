import 'package:community_dev/components/logo.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Teams/TeamsScreen.dart';
import 'package:community_dev/components/cardTeams.dart';
import 'package:community_dev/views/Teams/detailsTeam/infoTeam.dart';
import 'package:community_dev/views/Teams/detailsTeam/memberTeam.dart';
import 'package:community_dev/views/Teams/detailsTeam/nameTeam.dart';
import 'package:community_dev/components/tapBar.dart';

import 'package:community_dev/components/newUserCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class detailsTeam extends StatelessWidget {
  const detailsTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.backgroundcolor,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              height: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  topBar(
                      icon1: 'assets/arrow-left.png',
                      press1: () {
                        Get.back();
                      },
                      title: "Flutter App",
                      icon2: 'assets/plus.png',
                      press2: () {}),
                  nameTeam(),
                  Row(
                    children: [
                      logoo(
                        text: "Dart",
                        icon: 'assets/dart.png',
                        press: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      logoo(
                        text: "My SQL",
                        icon: 'assets/mysql.png',
                        press: () {},
                      )
                    ],
                  ),
                  infoTeams(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 1.5,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: colors.primary.withOpacity(0.8),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Member:',
                          style: GoogleFonts.abel(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 350,
                          child: ListView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  members(
                                    textt: '@fsd345',
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    textt: '@fsd345',
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    textt: '@fsd345',
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    textt: '@fsd345',
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    textt: '@fsd345',
                                    text: 'Fisal Alharbi',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.white,
                                    )),
                                width: Get.width / 1.2,
                                height: 60,
                                child: Center(
                                  child: Text(
                                    'Voice Chat',
                                    style: GoogleFonts.almarai(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

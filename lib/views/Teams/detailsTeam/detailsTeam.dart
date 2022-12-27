import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Teams/body.dart';
import 'package:community_dev/components/cardTeams.dart';
import 'package:community_dev/views/Teams/detailsTeam/infoTeam.dart';
import 'package:community_dev/views/Teams/detailsTeam/memberTeam.dart';
import 'package:community_dev/views/Teams/detailsTeam/nameTeam.dart';
import 'package:community_dev/components/tapBar.dart';
import 'package:community_dev/views/TimeLine/post.dart';
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
                    icon2: 'assets/plus.png',
                     press2: () {
                     
                    }
                  ),
                  nameTeam(),
                  infoTeams(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 1.5,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
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
                          style: GoogleFonts.openSans(
                            fontSize: 24,
                            color: colors.Text,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 350,
                          child: ListView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  members(
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    text: 'Abdullah Nasser',
                                  ),
                                  members(
                                    text: 'Nouf Alabdly',
                                  ),
                                  members(
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
                  Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        primaryButton(
                          title: 'Chat',
                          onPressed: () {},
                        ),
                        primaryButton(
                          title: 'Voic Chat',
                          onPressed: () {},
                        ),
                      ],
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

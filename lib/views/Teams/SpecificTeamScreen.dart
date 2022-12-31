import 'package:community_dev/components/logo.dart';

import 'package:community_dev/components/TeamCreationInfo.dart';
import 'package:community_dev/components/TeamChatButton.dart';
import 'package:community_dev/components/memberTeam.dart';
import 'package:community_dev/components/nameTeam.dart';

import 'package:community_dev/components/newUserCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class SpecificTeamScreen extends StatelessWidget {
  const SpecificTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colors.Text,
            size: 25,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Team name",
            style: GoogleFonts.merriweather(
                color: colors.Text, fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/plus.png',
              height: 25,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                nameTeam(
                  TeamID: '#76545454',
                  Dec: 'This is a test',
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  children: [
                    logoo(
                      text: "Dart",
                      icon: 'assets/dart.png',
                      press: () {},
                    ),
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    logoo(
                      text: "My SQL",
                      icon: 'assets/mysql.png',
                      press: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                TeamCreationInfo(),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            height: Get.height / 1.5,
            decoration: BoxDecoration(
              color: colors.fields,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
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
                        'Members',
                        style: GoogleFonts.merriweather(
                          fontSize: 22,
                          color: colors.Text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                        height: Get.height * 0.4,
                        child: ListView(
                          children: [
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            ),
                            TeamMemberCard(
                              userID: 'ss',
                              userName: 'ss',
                              imageURL: "",
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ChatButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

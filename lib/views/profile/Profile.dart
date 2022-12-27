import 'package:community_dev/Controller/profileController.dart';
import 'package:community_dev/Servises/FireBase/ProfileAuth.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/Servises/FireBase/UsersAuth.dart';
import 'package:community_dev/components/ProfileCards.dart';
import 'package:community_dev/components/profileOptionCard.dart';
import 'package:community_dev/views/profile/Mypost.dart';
import 'package:community_dev/views/profile/Settings.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.find();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (_) {
            return Text("${profileController.name}",
                style: GoogleFonts.quicksand(
                    color: colors.Text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.pen),
            color: colors.Text,
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          Container(
            width: Get.width * 0.1,
            height: Get.height * 0.15,
            child: CircleAvatar(
              maxRadius: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                // child: Image.asset(
                //   "images/pic5.jpeg",
                //   fit: BoxFit.fitWidth,
                // )
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          GetBuilder<ProfileController>(
            init: ProfileController(),
            builder: (_) {
              return profileCard(
                title: "Bio",
                value: profileController.bio,
              );
            },
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          profileCard(
            title: "Programming langauges ",
            value: "HTML, CSS, PHP, JS",
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          profileOptionCard(
            title: "Settings",
            icon: CupertinoIcons.settings,
            onTap: () {
              Get.to(() => Settings());
            },
          ),
          profileOptionCard(
            title: "My posts",
            icon: CupertinoIcons.list_bullet_indent,
            onTap: () {
              Get.to(() => Mypost());
            },
          ),
          profileOptionCard(
            title: "Sign out",
            icon: Icons.logout_rounded,
            TileColor: colors.error,
            textColor: colors.fields,
            onTap: () {
              SignOutMethod();
            },
          ),
        ],
      ),
    );
  }
}
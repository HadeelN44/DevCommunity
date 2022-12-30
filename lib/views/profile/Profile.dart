import 'package:community_dev/Servises/FireBase/ProfileAuth.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/Servises/FireBase/UsersAuth.dart';
import 'package:community_dev/components/ProfileCards.dart';
import 'package:community_dev/components/logo.dart';
import 'package:community_dev/components/profileOptionCard.dart';
import 'package:community_dev/views/profile/EditProfile.dart';
import 'package:community_dev/views/edit-profile.dart';
import 'package:community_dev/views/profile/Mypost.dart';
import 'package:community_dev/views/profile/Settings.dart';
import 'package:community_dev/views/profile/detailsProfile.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: colors.backgroundcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: Get.height / 2.8,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.to(() => editProfile());
                            },
                            child: Container(
                                height: 35,
                                child: Image.asset('assets/edit.png'))),
                      ],
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 60,
                      child: Image.asset(
                        'assets/user2.png',
                      ),
                    ),
                  ),
                  Text(
                    "${GetStorage().read("username")}",
                    style: GoogleFonts.alata(
                      fontSize: 30,
                      color: colors.primary,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logoo(
                        icon: 'assets/kotlin.png',
                        press: () {},
                        text: "KOTLIN",
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      logoo(
                        icon: 'assets/swift.png',
                        press: () {},
                        text: "SWIFT",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  detailsProfile(
                    infoName: "Psot",
                    nump: '24',
                  ),
                  detailsProfile(
                    infoName: "Score",
                    nump: '117',
                  ),
                  Container(
                    width: Get.width / 3.1,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Text(
                          'comments',
                          style: GoogleFonts.alata(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.alata(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            profileCard(
              title: "Bio",
              value: GetStorage().read("bio"),
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
              onTap: () {
                SignOutMethod();
              },
            ),
          ],
        ),
      ),
    );
  }
}

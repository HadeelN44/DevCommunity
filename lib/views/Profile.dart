import 'package:community_dev/components/ProfileCards.dart';
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Profile",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
            
            },
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
                  child: Image.asset(
                    "images/pic5.jpeg",
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          profileCard(
            title: "Name",
            value: "HADEEL",
            icon: CupertinoIcons.person_fill,
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          profileCard(
            title: "Phone number",
            value: "0505039838",
            icon: CupertinoIcons.phone_fill,
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          profileCard(
            title: "Email",
            value: "HADEEL@mail.com",
            icon: Icons.alternate_email_rounded,
          ),
        ],
      ),
    );
  }
}

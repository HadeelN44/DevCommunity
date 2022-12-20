import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Teams extends StatelessWidget {
  const Teams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Teams",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Create your team",
                    content: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          customTextField(
                            name: "Team name",
                            isPass: false,
                            prefixIcon: Icon(
                              CupertinoIcons.person_3_fill,
                              size: 18,
                              color: colors.icons,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            hint: "Enter your team name ",
                          ),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          primaryButton(
                            title: 'Create',
                            onPressed: () {
                              Get.defaultDialog(
                                  title: "Great",
                                  content: Column(
                                    children: [
                                      Text(
                                        "Your team is created succefully",
                                        //textAlign: TextAlign.left,
                                        style: GoogleFonts.openSans(
                                          fontSize: 20,
                                          color: colors.Text,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.05,
                                      ),
                                      primaryButton(
                                        title: 'OK',
                                        onPressed: () {},
                                      )
                                    ],
                                  ));
                            },
                          ),
                        ],
                      ),
                    ));
              },
              icon: Icon(
                Icons.add,
                color: colors.Text,
              ))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 32),
            leading: Icon(CupertinoIcons.person_fill),
            title: Text(
              "Team One",
              style: GoogleFonts.openSans(
                fontSize: 24,
                color: colors.Text,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Get.to(() => Team());
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 32),
            leading: Icon(CupertinoIcons.person_fill),
            title: Text(
              "Team Two",
              style: GoogleFonts.openSans(
                fontSize: 24,
                color: colors.Text,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 32),
            leading: Icon(CupertinoIcons.person_fill),
            title: Text(
              "Team Three",
              style: GoogleFonts.openSans(
                fontSize: 24,
                color: colors.Text,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

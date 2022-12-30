import 'package:community_dev/components/dropdown.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Teams/newTeam/buttoncolor.dart';
import 'package:community_dev/components/descriptionCard.dart';
import 'package:community_dev/components/nameTeamCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:community_dev/constants/style.dart';

import 'package:group_button/group_button.dart';

class newTeam extends StatefulWidget {
  newTeam({super.key});

  @override
  State<newTeam> createState() => _newTeamState();
}

class _newTeamState extends State<newTeam> {
  //List colors = [Color.fromARGB(255, 65, 65, 65), Colors.transparent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 25,
                    child: Image.asset('assets/arrow-left.png'),
                  ),
                ),
                Text(
                  'New Team',
                  style: GoogleFonts.abel(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10,
                ),
              ],
            ),
          ),
          // dropdown(
          //   dropdownName: 'Chose Language:',
          //   writehere: "Select Your Language",
          //   press: () {},
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                nameTeam(),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                dropdown(
                  dropdownName: 'Programming Language:',
                  writehere: "Select Your Language",
                  press: () {},
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                dropdown(
                  dropdownName: 'Number of Member:',
                  writehere: "Select Your Number",
                  press: () {},
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                description(),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                primaryButton(
                  title: 'Create +',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

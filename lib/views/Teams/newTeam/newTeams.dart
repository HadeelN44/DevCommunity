import 'package:community_dev/components/dropdown.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Teams/newTeam/buttoncolor.dart';
import 'package:community_dev/views/Teams/newTeam/description.dart';
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
  List colors = [Color.fromARGB(255, 65, 65, 65), Colors.transparent];

  int? index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
                    style: GoogleFonts.openSans(
                      fontSize: 18,
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
            dropdown(
              dropdownName: 'Chose Language:',
              writehere: "Select Your Language",
              press: () {},
            ),
            dropdown(
              dropdownName: 'Number of Member:',
              writehere: "Select Your Number",
              press: () {},
            ),
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (index == 1) {
                        index = 0;
                      } else if (index == 0) {
                        index = 1;
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 60,
                      width: Get.width / 2.2,
                      decoration: BoxDecoration(
                          border: colors[index!] == Colors.black
                              ? Border.all(color: Colors.transparent)
                              : Border.all(
                                  color: Color.fromARGB(255, 96, 96, 96)),
                          color: colors[index!],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Public',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 60,
                    width: Get.width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('Privet',
                          style: GoogleFonts.openSans(
                            fontSize: 17,
                            color: Color.fromARGB(255, 67, 67, 67),
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            description(),
            primaryButton(
              title: 'Creat +',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

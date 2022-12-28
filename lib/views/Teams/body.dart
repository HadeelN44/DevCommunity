import 'package:community_dev/components/headerName.dart';
import 'package:community_dev/components/cardTeams.dart';
import 'package:community_dev/views/Teams/detailsTeam/detailsTeam.dart';
import 'package:community_dev/components/tapBar.dart';
import 'package:community_dev/views/Teams/joinTeam.dart';
import 'package:community_dev/views/Teams/newTeam/newTeams.dart';
import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class teamss extends StatelessWidget {
  const teamss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.backgroundcolor,
        child: ListView(
          children: [
            headerName(
              text: 'Teams',
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 8, right: 8),
              margin: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        'Locking for a Team ?',
                        style: GoogleFonts.abel(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonTeams(
                        text: "New Team +",
                        press: () {
                          Get.to(newTeam());
                        },
                      ),
                      buttonTeams(
                        text: "Join Team",
                        press: () {
                          // showCustomDialog;
                        },
                      ),
                    ],
                  ),
                  // Container(
                  //   height: 50,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       Row(
                  //         children: [
                  //           logoo(
                  //             press: () {},
                  //             text: "Ruby",
                  //             icon: "assets/ruby.png",
                  //           ),
                  //           logoo(
                  //             press: () {},
                  //             text: "My SQL",
                  //             icon: "assets/mysql.png",
                  //           ),
                  //           logoo(
                  //             press: () {},
                  //             text: "C++",
                  //             icon: "assets/c+.png",
                  //           ),
                  //           logoo(
                  //             press: () {},
                  //             text: "C#",
                  //             icon: "assets/cc.png",
                  //           ),
                  //           logoo(
                  //             press: () {},
                  //             text: "Swift",
                  //             icon: "assets/swift.png",
                  //           ),
                  //           logoo(
                  //             press: () {},
                  //             text: "HTML",
                  //             icon: "assets/html.png",
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  cardTeam(
                    nameTeam: 'Flutter App',
                    descriptiontext: "Creat Amizing Application with Mysql",
                    idTeam: "#7654567",
                    fileed: colors.fields,
                    press: () {
                      Get.to(detailsTeam());
                    },
                  ),
                  cardTeam(
                    nameTeam: 'Flutter App',
                    descriptiontext: "Creat Amizing Application with Mysql",
                    idTeam: "#7654567",
                    fileed: colors.primary.withOpacity(0.4),
                    press: () {},
                  ),
                  cardTeam(
                    nameTeam: 'Flutter App',
                    descriptiontext: "Creat Amizing Application with Mysql",
                    idTeam: "#7654567",
                    fileed: colors.fields,
                    press: () {},
                  ),
                  cardTeam(
                    nameTeam: 'Flutter App',
                    descriptiontext: "Creat Amizing Application with Mysql",
                    idTeam: "#7654567",
                    fileed: colors.primary.withOpacity(0.4),
                    press: () {},
                  ),
                  cardTeam(
                    nameTeam: 'Flutter App',
                    descriptiontext: "Creat Amizing Application with Mysql",
                    idTeam: "#7654567",
                    fileed: colors.fields,
                    press: () {},
                  ),
                  cardTeam(
                    nameTeam: 'Flutter App',
                    descriptiontext: "Creat Amizing Application with Mysql",
                    idTeam: "#7654567",
                    fileed: colors.primary.withOpacity(0.4),
                    press: () {},
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


class buttonTeams extends StatelessWidget {
  const buttonTeams({super.key, this.text, required this.press});
  final String? text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      child: ElevatedButton(
        onPressed: press as void Function()?,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.all(0),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(colors: [colors.primary, colors.Text])),
          padding: const EdgeInsets.all(0),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

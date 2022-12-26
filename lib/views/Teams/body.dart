import 'package:community_dev/views/Teams/cardTeams.dart';
import 'package:community_dev/views/Teams/detailsTeam.dart';
import 'package:community_dev/views/Teams/tapBar.dart';
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
    return Container(
      color: colors.backgroundcolor,
      child: ListView(
        children: [
          topBar(),
          Container(
            padding: EdgeInsets.only(top: 25, left: 8, right: 8),
            margin: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buttonteams(
                      text: 'New Team   +',
                      press: () {},
                    ),
                    buttonteams(
                      text: 'Join Team',
                      press: () {},
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'Locking for a Team?',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        color: colors.Text,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          logoo(
                            press: () {
                             
                            },
                            text: "Ruby",
                            icon: "assets/ruby.png",
                          ),
                          logoo(
                            press: () {},
                            text: "My SQL",
                            icon: "assets/mysql.png",
                          ),
                          logoo(
                            press: () {},
                            text: "C++",
                            icon: "assets/c+.png",
                          ),
                          logoo(
                            press: () {},
                            text: "C#",
                            icon: "assets/cc.png",
                          ),
                          logoo(
                            press: () {},
                            text: "Swift",
                            icon: "assets/swift.png",
                          ),
                          logoo(
                            press: () {},
                            text: "HTML",
                            icon: "assets/html.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                cardTeam(
                  descriptiontext: "Creat Amizing Application with Mysql",
                  idTeam: "#7654567",
                  press: () {
                     Get.to(detailsTeam());
                  },
                ),
                cardTeam(
                  descriptiontext: "Creat Amizing Application with Mysql",
                  idTeam: "#7654567",
                  press: () {},
                ),
                cardTeam(
                  descriptiontext: "Creat Amizing Application with Mysql",
                  idTeam: "#7654567",
                  press: () {},
                ),
                cardTeam(
                  descriptiontext: "Creat Amizing Application with Mysql",
                  idTeam: "#7654567",
                  press: () {},
                ),
                cardTeam(
                  descriptiontext: "Creat Amizing Application with Mysql",
                  idTeam: "#7654567",
                  press: () {},
                ),
                cardTeam(
                  descriptiontext: "Creat Amizing Application with Mysql",
                  idTeam: "#7654567",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class buttonteams extends StatelessWidget {
  const buttonteams({super.key, this.text, required this.press});
  final String? text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            border: Border.all(color: colors.primary, width: 2.5),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(
          text!,
          style: GoogleFonts.openSans(
            fontSize: 14,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}

class logoo extends StatelessWidget {
  const logoo({super.key, this.text, required this.press, required this.icon});
  final String? text;
  final Function press;

  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          left: 20,
          //  top: 20,
        ),
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: colors.icons, width: 2.5),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(text!), Image.asset(icon)],
        )
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.home,
        //   ),
        //   iconSize: 15,
        // ),

        );
  }
}

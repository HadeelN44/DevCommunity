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
                      press: () {
                        Get.to(detailsTeam());
                      },
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
                            press: () {},
                            text: "",
                            color: Colors.yellow,
                          ),
                          logoo(
                            press: () {},
                            text: "",
                            color: Color.fromARGB(255, 255, 108, 59),
                          ),
                          logoo(
                            press: () {},
                            text: "",
                            color: Color.fromARGB(255, 47, 23, 169),
                          ),
                          logoo(
                            press: () {},
                            text: "",
                            color: Color.fromARGB(255, 29, 232, 52),
                          ),
                          logoo(
                            press: () {},
                            text: "",
                            color: Color.fromARGB(255, 16, 212, 121),
                          ),
                          logoo(
                            press: () {},
                            text: "",
                            color: Color.fromARGB(255, 212, 96, 224),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
                cardTeam(),
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
  const logoo({super.key, this.text, required this.press, required this.color});
  final String? text;
  final Function press;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      height: 30,
      width: 80,
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2.5),
          borderRadius: BorderRadius.circular(5)),
      child: Center(child: Image.asset('assets/send.png')
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.home,
          //   ),
          //   iconSize: 15,
          // ),
          ),
    );
  }
}

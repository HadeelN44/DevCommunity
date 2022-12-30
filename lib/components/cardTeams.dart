import 'package:community_dev/views/Teams/Teams.dart';
import 'package:community_dev/components/tapBar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class cardTeam extends StatelessWidget {
  const cardTeam(
      {super.key,
      required this.press,
      this.descriptiontext,
      this.idTeam,
      this.nameTeam,
      required this.fileed});
  final Function press;
  final String? nameTeam;
  final String? descriptiontext;
  final String? idTeam;
  final Color? fileed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: fileed,
            shadowColor: Colors.transparent),
        onPressed: press as void Function()?,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameTeam!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: colors.Text,
                            ),
                          ),
                          Text(
                            descriptiontext!,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: colors.Text,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(idTeam!,
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                color: colors.Text,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 20,
                          child: Icon(
                            CupertinoIcons.person_3_fill,
                            color: colors.Text,
                          )),
                      Text(
                        '4',
                        style: TextStyle(
                          color: colors.Text,
                        ),
                      ),
                      Text(
                        '/',
                        style: TextStyle(
                          color: colors.Text,
                        ),
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                          color: colors.Text,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

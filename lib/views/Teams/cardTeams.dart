
import 'package:community_dev/views/Teams/body.dart';
import 'package:community_dev/views/Teams/tapBar.dart';
import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';



class cardTeam extends StatelessWidget {
  const cardTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color.fromARGB(255, 162, 162, 162),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 203, 203, 203)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 5, right: 15),
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 215, 215, 215),
                    radius: 20,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description about the project",
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          color: colors.Text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("#TeamsID",
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
          ),
          Container(
            margin: EdgeInsets.only(left: 12, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'userName',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    color: colors.Text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'userID',
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color: colors.Text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              logoo(
                color: Color.fromARGB(255, 210, 210, 210),
                press: () {},
              ),
              logoo(
                color: Color.fromARGB(255, 228, 228, 228),
                press: () {},
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text('2/4'),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: colors.primary, width: 2.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Join",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: colors.Text,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

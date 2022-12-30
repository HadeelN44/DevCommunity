import 'package:community_dev/views/Teams/newTeam/newTeams.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class logoo extends StatelessWidget {
  const logoo(
      {super.key, required this.text, required this.press, required this.icon});
  final String text;
  final Function press;

  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(

            //  top: 20,
            ),
        height: 30,
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: GoogleFonts.almarai(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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

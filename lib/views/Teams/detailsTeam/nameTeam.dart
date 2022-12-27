import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';

class nameTeam extends StatelessWidget {
  const nameTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Creat compleat Application using C++',
            style: GoogleFonts.openSans(
              fontSize: 17,
              color: colors.Text,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '#76545454',
            style: GoogleFonts.openSans(
              fontSize: 13,
              color: Color.fromARGB(255, 178, 178, 178),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';


class members extends StatelessWidget {
  const members({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17),
      padding: EdgeInsets.only(left: 12),
      height: 47,
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width / 1.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 210, 210, 210).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Text(
        text!,
        style: GoogleFonts.openSans(
          fontSize: 16,
          color: colors.Text,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
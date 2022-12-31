import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class detailsProfile extends StatelessWidget {
  const detailsProfile({super.key, required this.infoName, required this.nump});
  final String infoName;
  final String nump;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 3.1,
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(
          color: Colors.black,
          width: 3.0,
        ),
      )),
      child: Column(
        children: [
          Text(
            infoName,
            style: GoogleFonts.alata(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            nump,
            style: GoogleFonts.alata(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

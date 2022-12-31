import 'package:community_dev/components/TeamNumberCard.dart';
import 'package:community_dev/views/Teams/TeamsScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';

class TeamCreationInfo extends StatelessWidget {
  const TeamCreationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Created by',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: colors.Text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Text(
                    'Abdullah',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: colors.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Created',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: colors.Text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Text(
                    'December 29, 2022',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: colors.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TeamNumberCard(),
            ],
          )
        ],
      ),
    );
  }
}

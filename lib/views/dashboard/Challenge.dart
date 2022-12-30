import 'package:card_swiper/card_swiper.dart';
import 'package:community_dev/components/ChallengeTime.dart';
import 'package:community_dev/components/ChallengeButton.dart';
import 'package:flutter/material.dart';
import 'package:community_dev/constants/style.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Challenge extends StatelessWidget {
  const Challenge({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Daily Challenge",
          style: GoogleFonts.abel(
            fontSize: 25,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: Get.height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffB4AEE8).withOpacity(0.3),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Container(
            padding: EdgeInsets.all(15),
            // width: MediaQuery.of(context).size.width ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(title.toString(),
                          style: TextStyle(fontSize: 15)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ChallengeTime(),
                      ChallengeButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

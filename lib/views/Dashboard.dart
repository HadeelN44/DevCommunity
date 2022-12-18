import 'package:community_dev/components/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Home",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.9,
                height: Get.height * 0.2,
                decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Daily challenge",
                          //textAlign: TextAlign.left,
                          style: GoogleFonts.openSans(
                            fontSize: 20,
                            color: colors.fields,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Help someone with a logical error ",
                            //textAlign: TextAlign.left,
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              color: colors.fields,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Latest News",
                textAlign: TextAlign.left,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: colors.icons,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: Get.width * 0.9,
                height: Get.height * 0.15,
                decoration: BoxDecoration(
                    color: colors.fields,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "The R-CNN model is getting improved ",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        color: colors.icons,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    primaryButton(
                      title: 'Check it out',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New to Flutter ",
                textAlign: TextAlign.left,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: colors.icons,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: Get.width * 0.9,
                height: Get.height * 0.2,
                decoration: BoxDecoration(
                    color: colors.fields,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sara",
                                //textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: colors.icons,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "@xSara_978",
                                //textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: colors.icons,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sara",
                                //textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: colors.icons,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "@xSara_978",
                                //textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: colors.icons,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sara",
                                //textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: colors.icons,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "@xSara_978",
                                //textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: colors.icons,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

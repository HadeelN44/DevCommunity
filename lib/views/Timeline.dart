import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "TimeLine",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: colors.Text,
          )
        ],
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
                    color: colors.fields,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(),
                              SizedBox(
                                width: Get.width * 0.05,
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
                                      fontSize: 16,
                                      color: colors.icons,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz_rounded),
                            color: colors.Text,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            "Hey there!",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.openSans(
                              fontSize: 18,
                              color: colors.Text,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            "25/05/2011, 9:00PM",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: colors.icons,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.chat_bubble),
                            color: colors.Text,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.star),
                            color: colors.Text,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/dashboard/chaling.dart';
import 'package:community_dev/views/dashboard/newCommunity.dart';
import 'package:community_dev/views/dashboard/news.dart';
import 'package:community_dev/views/dashboard/topPage.dart';
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
      body: Container(
        color: colors.primary.withOpacity(0.1),
        child: ListView(
          children: [
            top(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                chaling(),
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Latest News",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.abel(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  news(),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New to Community ",
                    style: GoogleFonts.abel(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    width: Get.width * 0.9,
                    height: Get.height * 0.2,
                    decoration: BoxDecoration(
                        color: colors.fields,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        newsUserCard(),
                        newsUserCard(),
                        newsUserCard(),
                        newsUserCard(),
                        newsUserCard(),
                        newsUserCard(),
                        newsUserCard(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

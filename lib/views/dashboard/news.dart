import 'package:community_dev/Servises/FireBase/challenge.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/dashboard/chaling.dart';
import 'package:community_dev/views/dashboard/topPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:url_launcher/url_launcher.dart';

class news extends StatelessWidget {
  news({super.key});
  late Uri _url;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      width: Get.width,
      height: 180,
      decoration: BoxDecoration(
          color: colors.fields, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            GetStorage().read("LatestNews")[0]["title"].toString(),
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: primaryButton(
              title: 'Check it out',
              onPressed: () async {
                // getNews();
                //await addChallenges();
                // var list = await getChallenges();
                var list = await generateDailyChallenge();
                print(list);
                print(GetStorage().read("LatestNews")[0]["Link"].toString());
                _url = Uri.parse(
                    GetStorage().read("LatestNews")[0]["Link"].toString());
                _launchUrl();
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

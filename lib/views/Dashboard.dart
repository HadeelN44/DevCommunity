import 'package:community_dev/Servises/FireBase/challenge.dart';
import 'package:community_dev/Servises/NewsApi/NewsAPI.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Uri _url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
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
                            GetStorage().read("dailyChallenge").toString(),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Text(
                        GetStorage().read("LatestNews")[0]["title"].toString(),
                        textAlign: TextAlign.left,
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          color: colors.icons,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    primaryButton(
                      title: 'Check',
                      width: 100,
                      onPressed: () async {
                        // getNews();
                        //await addChallenges();
                        // var list = await getChallenges();
                        var list = await generateDailyChallenge();
                        print(list);
                        print(GetStorage()
                            .read("LatestNews")[0]["Link"]
                            .toString());
                        _url = Uri.parse(GetStorage()
                            .read("LatestNews")[0]["Link"]
                            .toString());
                        _launchUrl();
                      },
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
                "New to Flutter",
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

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Controller/dashboardController.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/Servises/FireBase/Teams.dart';
import 'package:community_dev/components/Slider.dart';
import 'package:community_dev/components/primaryButton.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Object?>>? newUsersStream =
        FirebaseFirestore.instance.collection('Users').limit(4).snapshots();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: GoogleFonts.quicksand(
            fontSize: 20,
            color: colors.Text,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          // primaryButton(
          //   title: "title",
          //   onPressed: (() {
          //     SignOutMethod();
          //   }),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.9,
                height: Get.height * 0.2,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            //onTap:
                            // getUserTeams(UID: "PjGsgSH0bXRwdVC0ZOnsEtlt1TA3"),
                            child: Text(
                              "Daily challenge",
                              //textAlign: TextAlign.left,
                              style: GoogleFonts.openSans(
                                fontSize: 20,
                                color: colors.background,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.7,
                            child: GetBuilder<DashboardController>(
                              builder: (controller) {
                                return Text(
                                  controller.Challenges != null
                                      ? controller.Challenges[0].toString()
                                      : "",
                                  // GetStorage().read("dailyChallenge").toString(),
                                  //textAlign: TextAlign.left,
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    color: colors.background,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  softWrap: true,
                                );
                              },
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
                  color: colors.Text,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GetBuilder<DashboardController>(builder: ((controller) {
                return DotSlider();
              }))
            ],
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New to DevCommunity",
                textAlign: TextAlign.left,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: colors.Text,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Divider(
                indent: 40,
                endIndent: 40,
                thickness: 2,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: newUsersStream,
                  builder: ((context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Text("sksj"),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 32, right: 32, bottom: 32, top: 10),
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data?.docs.length,
                          itemBuilder: ((context, index) {
                            DocumentSnapshot doc = snapshot.data!.docs[index];
                            return Container(
                              margin: EdgeInsets.all(4),
                              child: InkWell(
                                onTap: () {
                                  // userProfile();
                                },
                                child: Row(
                                  children: [
                                    doc['imageURL'] != ''
                                        ? CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                doc['imageURL'],
                                                scale: 100))
                                        : CircleAvatar(
                                            maxRadius: 20,
                                            backgroundColor: colors.feedBack,
                                            child: Icon(Icons.person,
                                                color: Colors.white, size: 30)),
                                    SizedBox(
                                      width: Get.width * 0.02,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          doc["Name"],
                                          //textAlign: TextAlign.left,
                                          style: GoogleFonts.openSans(
                                            fontSize: 16,
                                            color: colors.Text,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          doc["UserName"],
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
                              ),
                            );
                          })),
                    );
                  })),
              // Container(
              //   width: Get.width * 0.9,
              //   height: Get.height * 0.2,
              //   decoration: BoxDecoration(
              //       color: colors.fields,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 16),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Row(
              //           children: [
              //             CircleAvatar(),
              //             SizedBox(
              //               width: Get.width * 0.02,
              //             ),
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "Sara",
              //                   //textAlign: TextAlign.left,
              //                   style: GoogleFonts.openSans(
              //                     fontSize: 16,
              //                     color: colors.icons,
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //                 Text(
              //                   "@xSara_978",
              //                   //textAlign: TextAlign.left,
              //                   style: GoogleFonts.openSans(
              //                     fontSize: 14,
              //                     color: colors.icons,
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/components/cutsomFloatingActionButton.dart';
import 'package:community_dev/components/headerName.dart';
import 'package:community_dev/components/cardTeams.dart';
import 'package:community_dev/views/Teams/detailsTeam/detailsTeam.dart';
import 'package:community_dev/components/tapBar.dart';
import 'package:community_dev/views/Teams/joinTeam.dart';
import 'package:community_dev/views/Teams/newTeam/newTeams.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class teamss extends StatelessWidget {
  const teamss({super.key});

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Object?>>? TeamStream =
        FirebaseFirestore.instance.collection('Teams').snapshots();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Teams",
            style: GoogleFonts.merriweather(
              fontSize: 22,
              color: colors.Text,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => newTeam());
          },
          backgroundColor: colors.primary,
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder<QuerySnapshot>(
                stream: TeamStream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center();
                  }
                  return ListView.builder(
                      itemCount: snapshot.data?.docs.length,
                      itemBuilder: ((context, index) {
                        DocumentSnapshot doc = snapshot.data!.docs[index];
                        return cardTeam(
                          nameTeam: doc["TeamName"],
                          descriptiontext: doc["Description"],
                          idTeam: doc["TeamID"],
                          fileed: colors.fields,
                          press: () {
                            Get.to(detailsTeam());
                          },
                        );
                      }));
                })));
  }
}

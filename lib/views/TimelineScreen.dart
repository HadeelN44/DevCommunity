import 'package:community_dev/Controller/profileController.dart';

import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/components/postItem.dart';
import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/Mypost.dart';
import 'package:community_dev/views/createPost.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class TimelineScreen extends StatefulWidget {
  TimelineScreen({
    Key? key,
  }) : super(key: key);
  @override
  TimelineScreenPage createState() => TimelineScreenPage();
}

class TimelineScreenPage extends State<TimelineScreen> {
  final auth = FirebaseAuth.instance;

  bool _isLoading = false;
  bool isMyPost = false;

  ProfileController profileController = Get.find();

  //.orderBy('postTimeStamp', descending: true)
  // FirebaseFirestore.instance
  //     .collection('Posts')
  //     .where("posterID", isEqualTo: "gDPag4TBPQVOzWZq5vgOOXWQrf32")
  //     .orderBy('postTimeStamp', descending: true)
  //     .snapshots();
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Object?>>? timelineStream = FirebaseFirestore.instance
        .collection('Posts')
        .orderBy('postTimeStamp', descending: true)
        .snapshots();
    Stream<QuerySnapshot<Object?>>? MyPostStream = FirebaseFirestore.instance
        .collection('Posts')
        .where("posterID", isEqualTo: profileController.UID)
        .snapshots();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(isMyPost ? "MyPost" : 'Timeline',
            style: GoogleFonts.quicksand(
                color: colors.Text, fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          isMyPost
              ? Center()
              : SizedBox(
                  width: 40,
                  height: 55.0,
                  child: ElevatedButton(
                    child: const Icon(Icons.add_rounded,
                        color: Color(0xff35424A), size: 35),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(2),
                        elevation: 0,
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent),
                    onPressed: () {
                      Get.to(() => createPost());
                    },
                  ),
                ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: isMyPost ? MyPostStream : timelineStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const LinearProgressIndicator();
          return Stack(
            children: <Widget>[
              (snapshot.data!.docs.isNotEmpty)
                  ? ListView(
                      shrinkWrap: true,
                      children: snapshot.data!.docs.map(
                        (DocumentSnapshot data) {
                          return PostItem(
                            data: data,
                            isFromThread: true,
                            parentContext: context,
                            Name: '',
                          );
                        },
                      ).toList(),
                    )
                  : Container(
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'There are no posts added.',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff606060)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )),
                    ),
            ],
          );
        },
      ),
    );
  }
}

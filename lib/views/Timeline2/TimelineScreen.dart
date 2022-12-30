import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/components/postItem.dart';
import 'package:community_dev/components/postItem_myPost.dart';
import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/profile/Mypost.dart';
import 'package:community_dev/views/Timeline2/createPost.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TimelineScreen extends StatefulWidget {
  TimelineScreen({
    Key? key,
    required this.isMyPost,
  }) : super(key: key);
  final bool isMyPost;
  @override
  TimelineScreenPage createState() => TimelineScreenPage();
}

class TimelineScreenPage extends State<TimelineScreen> {
  final auth = FirebaseAuth.instance;

  bool _isLoading = false;
  //bool isMyPost = false;

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
        .where("posterID", isEqualTo: GetStorage().read("UID"))
        .snapshots();
    var user = FirebaseAuth.instance.currentUser?.uid;

    // List<Map<String, dynamic>> test = [];

    // FirebaseFirestore.instance
    //     .collection('Posts')
    //     .where("posterID", isEqualTo: GetStorage().read("UID"))
    //     .orderBy('postTimeStamp', descending: false)
    //     .snapshots()
    //     .listen((event) {
    //   test.clear();
    //   event.docs.forEach((element) {
    //     print("=-=-=-=-=-=--");
    //     print(element.data());

    //     test.add(element.data());
    //     print("=-=-=-=-=-=--");
    //   });
    // });

    return Scaffold(
      appBar: AppBar(
        leading: widget.isMyPost
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: colors.Text,
                ),
                onPressed: () {
                  Get.back();
                },
              )
            : Center(),
        centerTitle: true,
        title: Text(widget.isMyPost ? "MyPost" : 'Timeline',
            style: GoogleFonts.quicksand(
                color: colors.Text, fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          widget.isMyPost
              ? Center()
              : SizedBox(
                  width: 40,
                  height: 55.0,
                  child: ElevatedButton(
                    child:
                        Icon(Icons.add_rounded, color: colors.Text, size: 35),
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
        stream: widget.isMyPost ? MyPostStream : timelineStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return LinearProgressIndicator(
              color: colors.primary,
            );
          return Stack(
            children: <Widget>[
              (snapshot.data!.docs.isNotEmpty && snapshot.hasData)
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
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'There are no posts added.',
                              style:
                                  TextStyle(fontSize: 16, color: colors.icons),
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

import 'package:community_dev/components/postItem.dart';
import 'package:community_dev/constants/style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class TimelineScreen extends StatefulWidget {
  // final String courseId;
  // final String sectionId;
  // final String incName;

  TimelineScreen({
    Key? key,
    // required this.courseId,
    // required this.sectionId,
    // required this.incName
  }) : super(key: key);
  @override
  TimelineScreenPage createState() => TimelineScreenPage();
}

class TimelineScreenPage extends State<TimelineScreen> {
  final auth = FirebaseAuth.instance;

  bool _isLoading = false;
  dynamic user;
  String? userEmail;
  //String userPhoneNumber;

  @override
  void initState() {
    getCurrentUserInfo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Timeline',
                style: GoogleFonts.quicksand(
                    color: colors.Text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            actions: [
              SizedBox(
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
                      onPressed: () {}))
            ]),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Posts')
                .orderBy('postTimeStamp', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const LinearProgressIndicator();
              return Stack(children: <Widget>[
                snapshot.data!.docs.isNotEmpty
                    ? ListView(
                        shrinkWrap: true,
                        children:
                            snapshot.data!.docs.map((DocumentSnapshot data) {
                          return PostItem(
                              data: data,
                              isFromThread: true,
                              parentContext: context,
                              couresId: "widget.courseId",
                              sectionId: "widget.sectionId",
                              Name: "widget.incName");
                        }).toList(),
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
              ]);
            }));
  }

  void getCurrentUserInfo() async {
    // user.reload();
    user = auth.currentUser;
    userEmail = user.email;
    //  userPhoneNumber = user.phoneNumber;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Servises/FireBase/Timeline.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Helper/utils.dart';

import 'package:firebase_auth/firebase_auth.dart';

class PostItem extends StatefulWidget {
  final BuildContext parentContext;
  final DocumentSnapshot data;
  final bool isFromThread;

  final String Name;

  const PostItem(
      {Key? key,
      required this.data,
      required this.isFromThread,
      required this.parentContext,
      required this.Name})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => _PostItem();
}

class _PostItem extends State<PostItem> {
  final auth = FirebaseAuth.instance;

  // String? User = userEmail;

  dynamic user;
  String? userEmail;

  @override
  void initState() {
    getCurrentUserInfo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Row(
              children: [
                CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: colors.feedBack,
                    child: Icon(Icons.person, color: Colors.white, size: 30)),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(widget.data['posterName'],
                      style: GoogleFonts.quicksand(
                          fontSize: 16,
                          color: colors.Text,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.topRight,
                  /* padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 3.3,
                              bottom: MediaQuery.of(context).size.width / 14,
                              top: MediaQuery.of(context).size.width / 14),*/
                  child: Text(Utils.readTimestamp(widget.data['postTimeStamp']),
                      style: GoogleFonts.quicksand(
                          color: colors.icons,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 4, 10),
              child: Text(
                (widget.data['postContent'] as String).length > 200
                    ? '${widget.data['postContent'].substring(0, 132)} ...'
                    : widget.data['postContent'],
                style: const TextStyle(
                  fontSize: 16,
                ),
                //maxLines: 10,
              ),
            ),
            widget.data['postImage'] != 'NONE'
                ? Container(
                    child: Utils.cacheNetworkImageWithEvent(
                        context, widget.data['postImage'], 0, 0))
                : Container(),
            user.email == widget.data['posterID']
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: IconButton(
                            iconSize: 20,
                            color: const Color(0xffD1D6DB),
                            icon: const Icon(Icons.edit_rounded),
                            onPressed: () {},
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: IconButton(
                              color: const Color(0xffCF3B60),
                              iconSize: 20,
                              icon: const Icon(
                                Icons.delete_rounded,
                              ),
                              onPressed: () {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    content: Text(
                                        'Are you sure you want to delete your post?',
                                        style: GoogleFonts.asap(
                                            color: const Color(0xff606060),
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            child: Text(
                                              'Delete',
                                              style: GoogleFonts.asap(
                                                fontSize: 21,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                //alignment: Alignment.bottomCenter,
                                                fixedSize: Size(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.7,
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                ),
                                                //padding: EdgeInsets.all(2),
                                                elevation: 0,
                                                primary:
                                                    const Color(0xffCF3B60),
                                                shadowColor:
                                                    Colors.transparent),
                                            onPressed: () {
                                              deletePostFromFirebase(
                                                widget.data['postID'],
                                              );
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: (Size(
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4,
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      10)),
                                              padding: const EdgeInsets.all(2),
                                              elevation: 0,
                                              primary: Colors.transparent,
                                              shadowColor: Colors.transparent,
                                            ),
                                            child: Text('Cancel',
                                                style: GoogleFonts.asap(
                                                    color:
                                                        const Color(0xff455e89),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              })),
                    ],
                  )
                : Container(),
          ]),
        ),
      ),
    );
  }

  void getCurrentUserInfo() async {
    // user.reload();
    user = auth.currentUser;
    userEmail = user.email;
    //  userPhoneNumber = user.phoneNumber;
  }
}

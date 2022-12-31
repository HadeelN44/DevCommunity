import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Servises/FireBase/Teams.dart';
import 'package:community_dev/Servises/FireBase/challenge.dart';
import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Teams extends StatelessWidget {
  const Teams({super.key});

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Object?>>? TeamStream =
        FirebaseFirestore.instance.collection('Teams').snapshots();
    TextEditingController teamControl = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Teams',
            style: GoogleFonts.quicksand(
              fontSize: 20,
              color: colors.Text,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                        scrollable: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        content: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: customTextField(
                            controller: teamControl,
                            name: "Team name",
                            isPass: false,
                            prefixIcon: Icon(
                              CupertinoIcons.person_3_fill,
                              size: 18,
                              color: colors.icons,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            hint: "Enter your team name ",
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: primaryButton(
                                width: Get.width * 0.3,
                                title: 'Create',
                                onPressed: () {
                                  if (teamControl.text.isNotEmpty) {
                                    SetTeam(name: teamControl.text);
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Your Team is Created Successfully 🎉'),
                                          backgroundColor: colors.primary));

                                  Navigator.pop(context);
                                }),
                          ),
                        ]),
                  );
                },
                icon: Icon(
                  Icons.add,
                  color: colors.Text,
                ))
          ],
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: TeamStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center();
            }
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: ((context, index) {
                  DocumentSnapshot doc = snapshot.data!.docs[index];
                  return Card(
                    
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 32),
                      //minLeadingWidth: 0,
                      leading: Icon(
                        CupertinoIcons.person_3_fill,
                        color: colors.Text,
                      ),
                      title: Text(
                        doc["TeamName"],
                        style: GoogleFonts.asap(
                          fontSize: 18,
                          color: colors.Text,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      subtitle: Text(
                        doc["Description"],
                        style: GoogleFonts.asap(
                          fontSize: 18,
                          color: colors.icons,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: colors.Text,
                      ),
                      onTap: () {
                        Get.to(() => Team());
                      },
                    ),
                  );
                }));
          },
        ));
  }
}

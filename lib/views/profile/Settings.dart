import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Servises/FireBase/ProfileAuth.dart';
import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  String name = "";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Object?>>? userStream = FirebaseFirestore.instance
        .collection('Users')
        .where("userID", isEqualTo: GetStorage().read("UID"))
        .snapshots();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: colors.Text,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Settings",
              style: GoogleFonts.quicksand(
                  color: colors.Text,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: userStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center();
            }
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: ((context, index) {
                  DocumentSnapshot doc = snapshot.data!.docs[index];
                  return Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      customTextField(
                        onChanged: (value) {
                          name = value;
                        },
                        name: "Name",
                        prefixIcon: Icon(
                          CupertinoIcons.person_fill,
                          size: 18,
                          color: colors.icons,
                        ),
                        isPass: false,
                        hint: doc["Name"],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      customTextField(
                        onChanged: (value) {
                          email = value;
                        },
                        name: "Email",
                        isPass: false,
                        prefixIcon: Icon(
                          Icons.alternate_email_rounded,
                          size: 18,
                          color: colors.icons,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        hint: GetStorage().read("email"),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      customTextField(
                        onChanged: (value) {
                          password = value;
                        },
                        name: "Password",
                        prefixIcon: Icon(
                          CupertinoIcons.lock_fill,
                          size: 18,
                          color: colors.icons,
                        ),
                        isPass: true,
                        keyboardType: TextInputType.visiblePassword,
                        hint: "Enter your password",
                      ),
                      SizedBox(
                        height: Get.height * 0.07,
                      ),
                      primaryButton(
                        title: 'Save',
                        onPressed: () async {
                          if (name != "") {
                            updateName(name: name);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Your Information Updated Successfully 🎉'),
                                backgroundColor: colors.primary));
                          }

                          if (email != "") {
                            updateEmail(email: email);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Your Information Updated Successfully 🎉'),
                                backgroundColor: colors.primary));
                          }
                          if (password != "") {
                            updateEmail(email: email);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Your Information Updated Successfully 🎉'),
                                backgroundColor: colors.primary));
                          }

                          Get.back();
                        },
                      ),
                    ],
                  );
                }));
          },
        ));
  }
}

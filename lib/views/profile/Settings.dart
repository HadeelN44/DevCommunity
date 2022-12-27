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

class Settings extends StatelessWidget {
  Settings({super.key});
  TextEditingController nameControl = TextEditingController();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                color: colors.Text, fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            controller: nameControl,
            name: "Name",
            prefixIcon: Icon(
              CupertinoIcons.person_fill,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            hint: GetStorage().read("name"),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            controller: emailControl,
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
            controller: passControl,
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
              if (emailControl.text.isNotEmpty)
                UpdateProfileMethod(
                  email: emailControl.text,
                );
              if (nameControl.text.isNotEmpty)
                UpdateProfileMethod(
                  name: nameControl.text,
                );
              if (passControl.text.isNotEmpty)
                UpdateProfileMethod(password: passControl.text);

              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

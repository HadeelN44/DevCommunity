import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
            name: "Name",
            prefixIcon: Icon(
              CupertinoIcons.person_fill,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            hint: "Enter your name",
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            name: "Email",
            isPass: false,
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
              color: colors.icons,
            ),
            keyboardType: TextInputType.emailAddress,
            hint: "Enter your email",
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

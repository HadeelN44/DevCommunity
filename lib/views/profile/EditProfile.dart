import 'dart:io';

import 'package:community_dev/Servises/FireBase/ProfileAuth.dart';
import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:community_dev/Helper/imagePicker.dart';

class editProfile extends StatelessWidget {
  editProfile({super.key});
  TextEditingController bioControl = TextEditingController();
  TextEditingController cityControl = TextEditingController();
  File? image;

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
        title: Text("Edit profile",
            style: GoogleFonts.quicksand(
                color: colors.Text, fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          InkWell(
            onTap: () async {
              image = await imagePicker.imgFromGallery();
            },
            child: Container(
              width: Get.width * 0.1,
              height: Get.height * 0.15,
              child: CircleAvatar(
                maxRadius: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  // child: Image.asset(
                  //   "images/pic5.jpeg",
                  //   fit: BoxFit.fitWidth,
                  // )
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          customTextField(
            controller: bioControl,
            name: "Bio",
            prefixIcon: Icon(
              CupertinoIcons.person_fill,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            hint: GetStorage().read("bio"),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            name: "Programming langauges",
            isPass: false,
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
              color: colors.icons,
            ),
            keyboardType: TextInputType.emailAddress,
            hint: "Enter your lanagues",
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            controller: cityControl,
            name: "City",
            isPass: false,
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
              color: colors.icons,
            ),
            keyboardType: TextInputType.emailAddress,
            hint: GetStorage().read("city"),
          ),
          SizedBox(
            height: Get.height * 0.07,
          ),
          primaryButton(
            title: 'Save',
            onPressed: () {
              if (bioControl.text.isNotEmpty)
                UpdateProfileMethod(Bio: bioControl.text);
              if (cityControl.text.isNotEmpty)
                UpdateProfileMethod(city: cityControl.text);
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

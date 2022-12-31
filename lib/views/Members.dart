import 'package:community_dev/components/contact.dart';
import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Members extends StatelessWidget {
  const Members({super.key});

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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Members of Team One',
          style: GoogleFonts.quicksand(
            fontSize: 20,
            color: colors.Text,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            name: "",
            isPass: false,
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 18,
              color: colors.icons,
            ),
            keyboardType: TextInputType.emailAddress,
            hint: "Search for a member",
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Contact(
                  name: "Sara",
                  imagePath: "images/pic1.webp",
                  number: "0564343422",
                  isAdded: true,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Contact(
                  name: "Nouf",
                  imagePath: "images/pic6.jpeg",
                  number: "053434344",
                  isAdded: true,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Contact(
                  name: "Mohammed",
                  imagePath: "images/pic3.jpeg",
                  number: "0532323299",
                  isAdded: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

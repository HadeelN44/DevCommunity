import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/components/textButton.dart';
import 'package:community_dev/views/MainPage.dart';
import 'package:community_dev/views/SignUp.dart';
import 'package:community_dev/views/forgetPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.05,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.03,
            ),
            child: Container(
              width: Get.width * 0.1,
              height: Get.height * 0.15,
              child: CircleAvatar(
                maxRadius: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "images/logo.png",
                      fit: BoxFit.fitWidth,
                    )),
              ),
            ),
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
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: Get.width * 0.6,
                  child: textButton(
                    name: "Forget your password?",
                    underline: false,
                    onPressed: () {
                      Get.to(forgetPassword());
                    },
                  )),
            ],
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          primaryButton(
            title: 'Sign In',
            onPressed: () {
              Get.to(MainPage());
            },
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New to DevCommunity?",
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: colors.hyperlinks,
                  fontWeight: FontWeight.normal,
                ),
              ),
              textButton(
                name: "Create an account",
                underline: true,
                onPressed: () {
                  Get.to(SignUp());
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

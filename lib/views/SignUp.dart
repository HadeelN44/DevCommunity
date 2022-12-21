import 'package:community_dev/Controller/RegistryController.dart';
import 'package:community_dev/components/customTextField.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/components/textButton.dart';
import 'package:community_dev/views/MainPage.dart';
import 'package:community_dev/views/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:community_dev/constants/style.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  // finding the controller which has been established in the main
  RegistryController control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.02,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Get.height * 0.02, horizontal: Get.width * 0.09),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.07,
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
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Text(
                  "Create Your Account",
                  style: GoogleFonts.openSans(
                    fontSize: 22,
                    color: colors.Text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
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
            height: Get.height * 0.02,
          ),
          customTextField(
            name: "Phone number",
            keyboardType: TextInputType.phone,
            prefixIcon: Icon(
              CupertinoIcons.phone_fill,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            hint: "Enter your phone number",
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          customTextField(
            controller: control.emailcontrol,
            name: "Email",
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            keyboardType: TextInputType.emailAddress,
            hint: "Enter your email",
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          customTextField(
            controller: control.passcontrol,
            name: "Password",
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Icon(
              CupertinoIcons.lock_fill,
              size: 18,
              color: colors.icons,
            ),
            hint: "Enter your password",
            isPass: true,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          primaryButton(
            title: 'Sign Up',
            onPressed: () {
              control.SignUp();
            },
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: colors.hyperlinks,
                  fontWeight: FontWeight.normal,
                ),
              ),
              textButton(
                name: "Sign In",
                underline: true,
                onPressed: () {
                  Get.off(() => SignIn());
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

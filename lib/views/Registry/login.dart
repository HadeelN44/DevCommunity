import 'package:community_dev/Controller/RegistryController.dart';
import 'package:community_dev/components/background.dart';
import 'package:community_dev/views/Registry/SignUp.dart';
import 'package:community_dev/views/Registry/forgetPassword.dart';
import 'package:community_dev/views/Registry/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:community_dev/constants/style.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  // finding the controller which has been established in the main
  RegistryController control = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RegistryController control = Get.find();
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: GoogleFonts.alata(
                  fontSize: 40,
                  color: colors.Text,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            primaryTextfiled(
              textt: 'UserName',
              controller: control.emailcontrol,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: size.height * 0.03),
            primaryTextfiled(
              textt: 'Password',
              controller: control.passcontrol,
              keyboardType: TextInputType.visiblePassword,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: TextButton(
                onPressed: () {
                  control.emailcontrol.clear();

                  Get.to(forgetPassword());
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  control.SignIn();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: LinearGradient(
                          colors: [colors.primary, colors.Text])),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
             
                child: TextButton(
                  onPressed: () {
                    control.emailcontrol.clear();
                    control.passcontrol.clear();
                    Get.to(SignUp());
                  },
                  child: Text(
                    "Don't Have an Account? Sign up",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

class primaryTextfiled extends StatelessWidget {
  primaryTextfiled(
      {super.key, required this.textt, this.keyboardType, this.controller});
  TextInputType? keyboardType = TextInputType.text;
  final TextEditingController? controller;
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(labelText: textt),
      ),
    );
  }
}

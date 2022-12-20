import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistryController extends GetxController {
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController passcontrol = TextEditingController();
  TextEditingController resetpasscontrol = TextEditingController();

  SignIn() {
    SignInMethod(emailAddress: emailcontrol.text, password: passcontrol.text);
  }

  SignUp() {
    SignUpMethod(emailAddress: emailcontrol.text, password: passcontrol.text);
  }

  ResetPass() {
    ResetPassMethod(emailAddress: resetpasscontrol.text);
  }
}

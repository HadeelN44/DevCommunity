import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistryController extends GetxController {
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController passcontrol = TextEditingController();
  TextEditingController userNamecontrol = TextEditingController();
  TextEditingController nameControl = TextEditingController();

  //for reset pass page
  TextEditingController resetpasscontrol = TextEditingController();

  SignIn()async {
    await SignInMethod(emailAddress: emailcontrol.text, password: passcontrol.text);
  }

  SignUp()async {
    await  SignUpMethod(
      emailAddress: emailcontrol.text,
      password: passcontrol.text,
      name: nameControl.text,
      userName: userNamecontrol.text,
    );
  }

  ResetPass()async {
  await  ResetPassMethod(emailAddress: resetpasscontrol.text);
  }
}

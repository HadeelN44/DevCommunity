import 'package:community_dev/Controller/RegistryController.dart';
import 'package:community_dev/views/SignIn.dart';
import 'package:community_dev/views/SignUp.dart';
import 'package:community_dev/views/Teams.dart';
import 'package:community_dev/views/forgetPassword.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //to put the controller for registry(Sign in , Sign Up ,forget password)
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  RegistryController controller = Get.put(RegistryController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: forgetPassword(),
      home: SignUp(),
    );
  }
}

import 'package:community_dev/Controller/RegistryController.dart';
import 'package:community_dev/Controller/profileController.dart';
import 'package:community_dev/Router/Router.dart';
import 'package:community_dev/constants/style.dart';
import 'package:community_dev/views/Registry/SignIn.dart';
import 'package:community_dev/views/Registry/SignUp.dart';
import 'package:community_dev/views/Team.dart';
import 'package:community_dev/views/Teams.dart';

import 'package:community_dev/views/Timeline2/createPost.dart';
import 'package:community_dev/views/Registry/forgetPassword.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Helper/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  RegistryController controller = Get.put(RegistryController());
  ProfileController profileController = Get.put(ProfileController());
  //to put the controller for registry(Sign in , Sign Up ,forget password)
  String? user = FirebaseAuth.instance.currentUser?.uid; // get user uid

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData(scaffoldBackgroundColor: colors.backgroundcolor),

      getPages: routerApp,
      initialRoute: user != null
          ? NameRoute.splash
          : NameRoute.mainScreen, // check if the user logged in
    );
  }
}

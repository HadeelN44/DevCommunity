import 'package:community_dev/Router/Router.dart';
import 'package:community_dev/Servises/FireBase/challenge.dart';
import 'package:community_dev/Servises/NewsApi/NewsAPI.dart';
import 'package:community_dev/constants/style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'Helper/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  loadData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //to put the controller for registry(Sign in , Sign Up ,forget password)
  String? user = FirebaseAuth.instance.currentUser?.uid; // get user uid

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: colors.background),
        debugShowCheckedModeBanner: false,
        getPages: routerApp,
        initialRoute: user != null
            ? NameRoute.mainScreen
            : NameRoute.signIn // check if the user logged in
        );
  }
}

loadData() async {
  await getNews();
  await generateDailyChallenge();
}

// import 'package:community_dev/Controller/RegistryController.dart';
// import 'package:community_dev/Controller/profileController.dart';
// import 'package:community_dev/views/MainPage.dart';
// import 'package:community_dev/views/Registry/SignIn.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// class SplashPage extends StatelessWidget {
//   SplashPage({
//     super.key,
//   });
//   ProfileController profileController = Get.put(ProfileController());
//   RegistryController controller = Get.put(RegistryController());

//   @override
//   Widget build(BuildContext context) {
//     var user = FirebaseAuth.instance.currentUser?.uid;

//     Future.delayed(Duration(seconds: 1), () {
//       Get.to(() => SignIn());
//     });

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 135, 63, 169),
//       body: Center(child: Text("sggsgs")
//           //Image.asset("images/todo.png")),
//           ),
//     );
//   }
// }

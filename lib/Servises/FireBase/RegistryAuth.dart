//This file contains
import 'package:community_dev/views/MainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

//Sign in method
SignInMethod({required String emailAddress, required String password}) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);
    Get.to(MainPage());
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

//Sign up method
SignUpMethod({required String emailAddress, required String password}) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    Get.to(MainPage());
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

//Sign out method
SignOutMethod() async {
  await FirebaseAuth.instance.signOut();
}


//Reset password method 
ResetPassMethod({required String emailAddress}) async {
  await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
}

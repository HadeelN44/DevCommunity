//Get full profile
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/Servises/GetStorage/userInfo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';

getProfileMethod() async {
  String id = await checkusers();
  var firestore = FirebaseFirestore.instance;
  var x = await firestore.collection("Users").doc(id).get();
  return x;
}

//updating the profile in database
UpdateProfileMethod(
    {String? email,
    String? name,
    String? userName,
    String? Bio,
    String? password,
    String? city}) async {
  String userID = await checkusers();

  var firestore = FirebaseFirestore.instance;
  if (email != null) {
    await firestore.collection("Users").doc(userID).update({
      "Email": email,
    });
    await ubdatingemail(email: email);
  }
  if (name != null) {
    await firestore.collection("Users").doc(userID).update({
      "Name": name,
    });
  }
  if (userName != null) {
    await firestore.collection("Users").doc(userID).update({
      "UserName": userName,
    });
  }
  if (Bio != null) {
    await firestore.collection("Users").doc(userID).update({
      "Bio": Bio,
    });
  }
  if (password != null) {
    _changePassword(password);
  }
  if (city != null) {
    await firestore.collection("Users").doc(userID).update({
      "City": city,
    });
  }

  await GetProfile();
}

//to Update emain in the list of user for auth
Future ubdatingemail({required String email}) async {
  try {
    await FirebaseAuth.instance.currentUser!.updateEmail(email);
  } catch (e) {
    print(e);
  }
}

void _changePassword(String newPassword) async {
  final user = await FirebaseAuth.instance.currentUser;
  final cred = EmailAuthProvider.credential(
      email: GetStorage().read("email"),
      password: GetStorage().read("password"));

  user?.reauthenticateWithCredential(cred).then((value) {
    user.updatePassword(newPassword).then((_) {
      //Success, do something
    }).catchError((error) {
      //Error, show something
    });
  }).catchError((err) {});
}

//Get full profile
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';

getProfileMethod() async {
  String id = await checkusers();
  var firestore = FirebaseFirestore.instance;
  var x = await firestore.collection("Users").doc(id).get();
  return x;
}

//updating the profile in database
UpdateProfileMethod({
  required String email,
  required String name,
  required String userName,
  required String Bio,
  //required List ProgramingLanguages,
}) async {
  String userID = await checkusers();
  print(userID);
  var firestore = FirebaseFirestore.instance;
  await firestore.collection("Users").doc(userID).update({
    "Name": name,
    "Email": email,
    "UserName": userName,
    "Bio": "",
   // "ProgrammingLanguages": [],
  });
  await ubdatingemail(email: email);
}


//to Update emain in the list of user for auth
Future ubdatingemail({required String email}) async {
  try {
    await FirebaseAuth.instance.currentUser!.updateEmail(email);
  } catch (e) {
    print(e);
  }
}

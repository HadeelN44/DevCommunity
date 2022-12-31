import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';

// add team to DB
SetTeam({
  required String name,
}) async {
  String userID = await checkusers();
  print(userID);
  var firestore = FirebaseFirestore.instance;
  await firestore.collection("Teams").doc().set({
    "TeamName": name,
    "TeamID": "",
    "Description": "",
    "CreatorID": userID,
    "CreationDate": DateTime.now(),
    "Members": [userID],
    "InvitationCode": ""
  });
}

getUserTeams({required String UID}) async {
  var firestore = FirebaseFirestore.instance;
  var x = await firestore.collection("Users").doc(UID).get();
  print(x.data()!["Teams"]);
  //x.data()!["Teams"];
}

// // add team to user's team list DB
// addTeamToUserAcc({
//   required String UID,
// }) async {
  

//   var firestore = FirebaseFirestore.instance;

//   await firestore.collection("Users").doc(UID).set({
//     "Teams": ,
//   });
  
// }

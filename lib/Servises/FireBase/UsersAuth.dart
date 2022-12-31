import 'package:cloud_firestore/cloud_firestore.dart';

getSpecificUser(
    {bool? name, bool? username, bool? email, required String UID}) async {
  var firestore = FirebaseFirestore.instance;

  if (name != null && name) {
    var x = await firestore.collection("Users").doc(UID).get();
    return x["Name"];
  } else if (username != null && username) {
    var x = await firestore.collection("Users").doc(UID).get();
    print("method ${x["UserName"]}");
    return x["UserName"];
  } else if (email != null && email) {
    var x = await firestore.collection("Users").doc(UID).get();
    return x["Email"];
  }
}

getUsers() async {
  var firestore = FirebaseFirestore.instance;
  var x = await firestore.collection("Users").get();
  List usersid = [];
  List usersname = [];

  for (var element in x.docs) {
    usersid.add(element.id); //list contains id of docs
  }
  //get the UserName of all user
  for (int i = 0; i < usersid.length; i++) {
    var x = await firestore.collection("Users").doc(usersid[i]).get();
    usersname.add(x["UserName"]);
    print(x["UserName"]);
  }
}

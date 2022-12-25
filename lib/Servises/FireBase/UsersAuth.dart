import 'package:cloud_firestore/cloud_firestore.dart';

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



import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_storage/get_storage.dart';

getChallenges() async {
  var firestore = FirebaseFirestore.instance;
  var x = await firestore.collection("Challenges").doc("challenge").get();
  return x.data();
}

addChallenges() async {
  Map<String, dynamic> Challenges = {
    "0": "1wirte new code",
    "1": "2wirte new code",
    "2": "3wirte new code",
    "3": "4wirte new code",
    "4": "wirte new code",
    "5": "wirte new code",
  };
  var firestore = FirebaseFirestore.instance;
  await firestore.collection("Challenges").doc("challenge").set(Challenges);
}

generateDailyChallenge() async {
  int num;
  int previous = -1;
  Map<String, dynamic>? Challenges = await getChallenges();
  List dailyChallenge = [];

  num = Random().nextInt(6);
  previous = num;

  for (int i = 0; i < 2; i++) {
    if (num == previous && i != 0) num = num + 1 % Challenges!.length;
    dailyChallenge.add(Challenges!["$i"]);
  }
  GetStorage().write("dailyChallenge", dailyChallenge);
  return dailyChallenge;
}

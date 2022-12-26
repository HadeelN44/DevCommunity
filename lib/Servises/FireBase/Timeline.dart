import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_dev/views/createPost.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<String?> uploadPostImages(
    {required String postID, required File? postImageFile}) async {
  FirebaseStorage storage = FirebaseStorage.instance;
  String fileName = 'images/$postID/Test';
  Reference reference = storage.ref().child(fileName);
  UploadTask uploadTask = reference.putFile(postImageFile!);
  TaskSnapshot storageTaskSnapshot = await uploadTask;
  String postImageURL = await storageTaskSnapshot.ref.getDownloadURL();
  return postImageURL;
}

Future<void> sendPostInFirebase(String postID, String postContent,
    String postImageURL, String name, String? email) async {
  FirebaseFirestore.instance.collection('Posts').doc(postID).set({
    'postID': postID,
    'postTimeStamp': DateTime.now().millisecondsSinceEpoch,
    'postContent': postContent,
    'postImage': postImageURL,
    'posterName': name,
    'posterEmail': email
  });
}

   Future<void> deletePostFromFirebase(
      String postID, String courseId, String sectionId) async {
    FirebaseFirestore.instance.collection('Posts').doc(postID).delete();
  }


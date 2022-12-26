import 'dart:io';

import 'package:community_dev/views/createPost.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagePicker {
  static Future<File?> imgFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return null;
    final imageTemp = File(image.path);
    return imageTemp;
  }

  static Future<File?> imgFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    final imageTemp = File(image.path);
    return imageTemp;
  }

  // static showPicker(context) async {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SafeArea(
  //           child: Container(
  //             child: new Wrap(
  //               children: <Widget>[
  //                 new ListTile(
  //                     leading: const Icon(
  //                       Icons.photo_library,
  //                     ),
  //                     title: const Text('Photo Library'),
  //                     onTap: () async {
  //                      createP = await imagePicker.imgFromGallery();

  //                       Navigator.of(context).pop();
  //                     }),
  //                 new ListTile(
  //                   leading: const Icon(Icons.photo_camera),
  //                   title: const Text('Camera'),
  //                   onTap: () async {
  //                     image = await imagePicker.imgFromCamera();

  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
}

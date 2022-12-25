import 'package:community_dev/Servises/FireBase/ProfileAuth.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController biocontrol = TextEditingController();
  TextEditingController userNamecontrol = TextEditingController();
  TextEditingController nameControl = TextEditingController();
  
  //proframing languages
  //TextEditingController plcontrol = TextEditingController();


  GetProfile() async {
    var data = await getProfileMethod();
    emailcontrol.text = data["Email"];
    nameControl.text = data["Name"];
    userNamecontrol.text = data["UserNAme"];
    biocontrol.text = data["Bio"];
  }

  Updateprofile() async {
    await UpdateProfileMethod(
        email: emailcontrol.text,
        name: nameControl.text,
        userName: userNamecontrol.text,
        Bio: biocontrol.text);
  }
}

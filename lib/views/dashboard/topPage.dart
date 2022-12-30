import 'package:community_dev/Controller/profileController.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/dashboard/chaling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class top extends StatelessWidget {
  const top({super.key});

  @override
  Widget build(BuildContext context) {
      ProfileController profileController = Get.find();
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      height: 150,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 25,
                child: Image.asset('assets/user.png'),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Hello, ',
                style: GoogleFonts.alata(
                  fontSize: 35,
                  color: colors.primary,
                  fontWeight: FontWeight.normal,
                ),
              ),
               GetBuilder<ProfileController>(
              init: ProfileController(),
              builder: (_) {
                return Text(
                  "${profileController.name}",
                   style: GoogleFonts.abel(
                  fontSize: 33,
                  color: colors.primary,
                  fontWeight: FontWeight.normal,
                
                  ),
                );
              },
            ),
             
            ],
          ),
        ],
      ),
    );
  }
}

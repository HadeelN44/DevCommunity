import 'package:community_dev/Controller/profileController.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/dashboard/Challenge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class top extends StatelessWidget {
  const top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      height: 80,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Hello, ',
                style: GoogleFonts.asap(
                  fontSize: 30,
                  color: colors.primary,
                  fontWeight: FontWeight.normal,
                ),
              ),
              GetBuilder<ProfileController>(
                init: ProfileController(),
                builder: (_) {
                  return Text(
                    "${GetStorage().read("name")}",
                    style: GoogleFonts.abel(
                      fontSize: 26,
                      color: colors.primary,
                      fontWeight: FontWeight.w400,
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

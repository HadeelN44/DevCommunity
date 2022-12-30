import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/dashboard/chaling.dart';
import 'package:community_dev/views/dashboard/topPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class newsUserCard extends StatelessWidget {
   newsUserCard({super.key, required this.userName, required this.userID});
  final String userName;
   final String userID;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 113, 113, 113)),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: colors.primary.withOpacity(0.5),
            child: Image.asset('assets/user1.png'),
          ),
          SizedBox(
            width: Get.width * 0.02,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  //textAlign: TextAlign.left,
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                 userID,
                  //textAlign: TextAlign.left,
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color: colors.icons,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

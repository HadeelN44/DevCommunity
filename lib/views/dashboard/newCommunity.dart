import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:community_dev/components/primaryButton.dart';

import 'package:community_dev/views/dashboard/topPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class newsUserCard extends StatelessWidget {
  newsUserCard(
      {super.key,
      required this.userName,
      required this.userID,
      this.onTap,
      this.imageURL});
  final String userName;
  final String userID;
  final String? imageURL;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      leading: imageURL != ''
          ? CircleAvatar(
              radius: 20, backgroundImage: NetworkImage(imageURL!, scale: 100))
          : CircleAvatar(
              maxRadius: 20,
              backgroundColor: colors.feedBack,
              child: Image.asset(
                'assets/user2.png',
              ),
            ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            //textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: colors.Text,
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
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}

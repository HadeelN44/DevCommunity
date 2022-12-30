import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/dashboard/Challenge.dart';
import 'package:community_dev/views/dashboard/topPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class news extends StatelessWidget {
  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      width: Get.width,
      height: 180,
      decoration: BoxDecoration(
          color: colors.fields, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "The R-CNN model is getting improved ",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          Container(
            child: primaryButton(
              title: 'Check it out',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

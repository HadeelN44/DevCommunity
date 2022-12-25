import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.backgroundcolor,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  post(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class topBar extends StatelessWidget {
  const topBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Center(
        child: Text(
          'dgdgms',
          style: GoogleFonts.alata(
            fontSize: 50,
            color: colors.primary,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

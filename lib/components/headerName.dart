import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class headerName extends StatelessWidget {
  const headerName({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Center(
        child: Text(
          text!,
          style: GoogleFonts.alata(
            fontSize: 35,
            color: colors.primary,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

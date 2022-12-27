import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:community_dev/components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class buttoncolor extends StatefulWidget {
  buttoncolor({super.key});

  @override
  State<buttoncolor> createState() => _buttoncolorState();
}

class _buttoncolorState extends State<buttoncolor> {
  List colors = [Color.fromARGB(255, 65, 65, 65), Colors.transparent];
  String? text;
  int? index = 1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 1) {
          index = 0;
        } else if (index == 0) {
          index = 1;
        }
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.all(8),
        height: 60,
        width: Get.width / 2.2,
        decoration: BoxDecoration(
            border: colors[index!] == Colors.black
                ? Border.all(color: Colors.transparent)
                : Border.all(color: Color.fromARGB(255, 96, 96, 96)),
            color: colors[index!],
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text.toString(),
          style: GoogleFonts.openSans(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}

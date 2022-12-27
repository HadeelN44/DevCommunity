import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class dropdown extends StatelessWidget {
  const dropdown({super.key, this.dropdownName, this.writehere, this.press});
  final String? dropdownName;
  final String? writehere;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dropdownName!,
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: colors.Text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: press,
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          writehere!,
                          style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: colors.Text,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                            height: 28,
                            child: Image.asset('assets/arrow-down.png')),
                      ],
                    ),
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

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';

class members extends StatelessWidget {
  const members({super.key, this.text, this.textt});
  final String? text;
  final String? textt;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17),
      padding: EdgeInsets.only(left: 12),
      height: 50,
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width / 1.3,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: colors.fields,
                child: Image.asset('assets/user1.png'),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text!,
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: colors.Text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    textt!,
                    style: GoogleFonts.openSans(
                      fontSize: 13,
                      color: colors.Text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

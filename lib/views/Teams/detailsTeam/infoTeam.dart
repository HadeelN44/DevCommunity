import 'package:community_dev/views/Teams/body.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';


class infoTeams extends StatelessWidget {
  const infoTeams({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Owner : ',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: colors.Text,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Abdullah ',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: colors.Text,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Language Use: ',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: colors.Text,
                  fontWeight: FontWeight.bold,
                ),
              ),
              logoo(
                press: () {},
                icon: 'assets/mysql.png',
                text: "My SQL",
              ),
              logoo(
                press: () {},
                icon: 'assets/c+.png',
                text: "C++",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 20, child: Image.asset('assets/group.png')),
                    Text('4'),
                    Text('/'),
                    Text('10'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
import 'package:community_dev/views/Teams/body.dart';
import 'package:community_dev/components/tapBar.dart';
import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class cardTeam extends StatelessWidget {
  const cardTeam(
      {super.key,
      required this.press,
      this.descriptiontext,
      this.idTeam,
      this.nameTeam,
      required this.fileed});
  final Function press;
  final String? nameTeam;
  final String? descriptiontext;
  final String? idTeam;
  final Color? fileed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: fileed,
            shadowColor: Colors.transparent),
        onPressed: press as void Function()?,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameTeam!,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        Text(
                          descriptiontext!,
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(idTeam!,
                            style: GoogleFonts.openSans(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Abullah',
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: colors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@abdo1997',
                        style: GoogleFonts.openSans(
                          fontSize: 10,
                          color: colors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 20,
                                  child: Image.asset('assets/group.png')),
                              Text(
                                '4',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                '/',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                '10',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

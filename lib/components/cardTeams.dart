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
      {super.key, required this.press, this.descriptiontext, this.idTeam});
  final Function press;
  final String? descriptiontext;
  final String? idTeam;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: Color.fromARGB(255, 186, 186, 186),
            shadowColor: Colors.transparent),
        onPressed: press as void Function()?,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 203, 203, 203)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 5, right: 15),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          descriptiontext!,
                          style: GoogleFonts.openSans(
                            fontSize: 17,
                            color: colors.Text,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(idTeam!,
                            style: GoogleFonts.openSans(
                              fontSize: 11,
                              color: colors.Text,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'userName',
                    style: GoogleFonts.openSans(
                      fontSize: 17,
                      color: colors.Text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'userID',
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: colors.Text,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [],
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
                            height: 20, child: Image.asset('assets/group.png')),
                        Text('4'),
                        Text('/'),
                        Text('10'),
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

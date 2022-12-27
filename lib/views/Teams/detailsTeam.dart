import 'package:community_dev/components/primaryButton.dart';
import 'package:community_dev/views/Teams/body.dart';
import 'package:community_dev/views/Teams/cardTeams.dart';
import 'package:community_dev/views/Teams/tapBar.dart';
import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class detailsTeam extends StatelessWidget {
  const detailsTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.backgroundcolor,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 25,
                      child: Image.asset('assets/arrow-left.png'),
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Image.asset('assets/plus.png'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              height: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  nameTeam(),
                  infoTeams(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 1.5,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Member:',
                          style: GoogleFonts.openSans(
                            fontSize: 24,
                            color: colors.Text,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 350,
                          child: ListView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  members(
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    text: 'Fisal Alharbi',
                                  ),
                                  members(
                                    text: 'Fisal Alharbi',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        primaryButton(
                          title: 'Chat',
                          onPressed: () {},
                        ),
                        primaryButton(
                          title: 'Voic Chat',
                          onPressed: () {},
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

class nameTeam extends StatelessWidget {
  const nameTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Creat compleat Application using C++',
            style: GoogleFonts.openSans(
              fontSize: 17,
              color: colors.Text,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '#76545454',
            style: GoogleFonts.openSans(
              fontSize: 13,
              color: Color.fromARGB(255, 178, 178, 178),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

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

class members extends StatelessWidget {
  const members({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17),
      padding: EdgeInsets.only(left: 12),
      height: 47,
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width / 1.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 210, 210, 210).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Text(
        text!,
        style: GoogleFonts.openSans(
          fontSize: 16,
          color: colors.Text,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

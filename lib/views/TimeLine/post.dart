import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.7,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: colors.fields,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _username(),
                        _userID(),
                        Row(
                          children: [
                            tag(),
                            tag(),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              voit()
            ],
          ),
        ),
        massege(),
      ]),
    );
  }
}

class massege extends StatelessWidget {
  const massege({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey there!",
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              fontSize: 18,
              color: colors.Text,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class _userID extends StatelessWidget {
  const _userID({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "@xSara_978",
      //textAlign: TextAlign.left,
      style: GoogleFonts.openSans(
        fontSize: 8,
        color: colors.Text,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _username extends StatelessWidget {
  const _username({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sara",
      style: GoogleFonts.openSans(
        fontSize: 16,
        color: colors.Text,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class voit extends StatelessWidget {
  const voit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_circle_up),
            color: colors.Text,
          ),
          Text('23'),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_circle_down),
            color: colors.Text,
          ),
        ],
      ),
    );
  }
}

class tag extends StatelessWidget {
  const tag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3),
      width: 45,
      height: 13,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(15)),
    );
  }
}

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
        child: ListView(
          children: [
            Center(
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}

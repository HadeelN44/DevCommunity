import 'package:community_dev/views/TimeLine/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class topBar extends StatelessWidget {
  const topBar({super.key, this.press1, this.press2, required this.icon1,required this.icon2});
  final Function()? press1;
  final Function()? press2;
  final String icon1;
  final String icon2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: 
              press1,
          
            child: Container(
              height: 25,
              child: Image.asset(icon1),
            ),
          ),
         
       
          InkWell(
            onTap: press2,
            child: Container(
              height: 25,
              child: Image.asset(icon2),
            ),
          ),
        ],
      ),
    );
  }
}

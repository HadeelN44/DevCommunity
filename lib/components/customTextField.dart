import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:community_dev/constants/style.dart';

class customTextField extends StatelessWidget {
  customTextField(
      {super.key,
      required this.name,
      this.prefixIcon,
      required this.isPass,
      this.keyboardType,
      this.controller,
      this.hint});
  final String name;
  final String? hint;
  final Icon? prefixIcon;
  bool isPass = false;
  TextInputType? keyboardType = TextInputType.text;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                // textAlign: TextAlign.left,
                "${name.toString()}",
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: colors.Text,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 1.1,
              child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: controller,
                  keyboardType: keyboardType,
                  obscureText: isPass,
                  cursorColor: Color.fromARGB(99, 158, 158, 158),
                  decoration: InputDecoration(
                    hintText: hint,
                    prefixIcon: prefixIcon,
                    isCollapsed: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: colors.fields,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

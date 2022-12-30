import 'package:flutter/material.dart';

class primaryTextfiled extends StatelessWidget {
  primaryTextfiled(
      {super.key, required this.textt, this.keyboardType, this.controller});
  TextInputType? keyboardType = TextInputType.text;
  final TextEditingController? controller;
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(labelText: textt),
      ),
    );
  }
}

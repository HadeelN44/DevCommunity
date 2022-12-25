import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
      child: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "                    Edit Profile",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                  width: 4, color: Theme.of(context).scaffoldBackgroundColor),
              shape: BoxShape.circle,
            )),
        const SizedBox(
          height: 35,
        ),
        buildTextField("  Bio*", "   x Enter your bio", false),
        buildTextField("  Programming Languages*", "  X CSS", false),
        buildTextField("  City*", "   Riyadh", false),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            "save",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    ));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.only(bottom: 3),
            labelText: labelText,
            labelStyle: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}

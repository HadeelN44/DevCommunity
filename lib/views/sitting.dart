import 'package:flutter/material.dart';

class Sitting extends StatefulWidget {
  @override
  _SittingPageState createState() => _SittingPageState();
}

class _SittingPageState extends State<Sitting> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
      child: ListView(children: [
        const SizedBox(
          height: 20,
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
        buildTextField("  Email*", "   x Enter your email", false),
        buildTextField("  passward*", "  X Enter your passward", true),
        Row(
          children: [
            Text("Forget your Password?"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            
          },
          child: const Text(
            "Sign in",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          height: 30,
          color: Colors.black,
        ),
        Row(
          children: const [
            Text("       New to DevCommunity?"),
            Text(
              "Create new account",
              style:
                  TextStyle(fontSize: 18, decoration: TextDecoration.underline),
            )
          ],
        )
      ]),
    ));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
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

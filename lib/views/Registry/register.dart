import 'package:community_dev/Controller/RegistryController.dart';
import 'package:community_dev/Servises/FireBase/RegistryAuth.dart';
import 'package:community_dev/components/background.dart';
import 'package:community_dev/components/newTextFieldAuth.dart';
import 'package:community_dev/views/Registry/login.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  Register({super.key});
  // finding the controller which has been established in the main
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController passcontrol = TextEditingController();
  TextEditingController userNamecontrol = TextEditingController();
  TextEditingController nameControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Container(
          color: colors.backgroundcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                child: Image.asset('assets/logo2.png'),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "REGISTER",
                  style: GoogleFonts.alata(
                    fontSize: 40,
                    color: colors.primary,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                textt: 'Name',
                controller: nameControl,
                keyboardType: null,
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                textt: 'UserName',
                controller: userNamecontrol,
                keyboardType: null,
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                textt: 'Email',
                controller: emailcontrol,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                textt: 'Password',
                controller: passcontrol,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
                  onPressed: () async {
                    GetStorage().write("password", passcontrol.text);
                    await SignUpMethod(
                      emailAddress: emailcontrol.text,
                      password: passcontrol.text,
                      name: nameControl.text,
                      userName: userNamecontrol.text,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(
                            colors: [colors.primary, colors.Text])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "SIGN UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),

               
                child: TextButton(
                  onPressed: () {
       
                    Get.off(() => LogIn());
                  },
                  child: Text(
                    "Already Have an Account? Sign in",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

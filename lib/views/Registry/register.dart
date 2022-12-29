import 'package:community_dev/Controller/RegistryController.dart';
import 'package:community_dev/components/background.dart';
import 'package:community_dev/views/NavigatorBar.dart';
import 'package:community_dev/views/Registry/login.dart';
import 'package:community_dev/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  // finding the controller which has been established in the main
  // RegistryController control = Get.find();
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
                ispass: false,

                textt: 'Name',
                //  controller: control.nameControl,
                keyboardType: null,
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                ispass: false,

                textt: 'UserName',
                //  controller: control.userNamecontrol,
                keyboardType: null,
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                ispass: false,
                textt: 'Email',
                //  controller: control.emailcontrol,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: size.height * 0.03),
              primaryTextfiled(
                ispass: true,
                textt: 'Password',
                //  controller: control.passcontrol,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(MainPage());
                    //  control.SignUp();//register page goto
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

                // onTap: () => {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => LoginScreen()))
                // },
                child: TextButton(
                  onPressed: () {
                    // control.emailcontrol.clear();
                    //control.passcontrol.clear();
                    Get.off(() => SignIn());
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

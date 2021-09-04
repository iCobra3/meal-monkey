import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/screens/signup_screen.dart';
import 'package:internship/widgets/G_F_buttons.dart';
import 'package:internship/widgets/dont_have_button.dart';
import 'package:internship/widgets/login_button.dart';
import 'package:internship/widgets/login_screen_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Widget space(double no) {
    return SizedBox(height: no);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                space(50),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                space(10),
                const Text(
                  'Add your details to login',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(124, 125, 126, 1)),
                ),
                space(35),
                const LoginTextField(
                  hintText: "your Email",
                ),
                space(25),
                const LoginTextField(hintText: "Password"),
                space(30),
                LoginButton(),
                space(15),
                const Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(124, 125, 126, 1)),
                ),
                space(40),
                const Text(
                  'or Login With',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(124, 125, 126, 1)),
                ),
                space(20),
                const GFButton(
                    buttonName: 'Facebook',
                    color: Color.fromRGBO(
                      54,
                      127,
                      192,
                      1,
                    )),
                space(20),
                const GFButton(
                    buttonName: 'Google',
                    color: Color.fromRGBO(
                      221,
                      75,
                      57,
                      1,
                    )),
                space(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    DontHave(
                      q: "Don't have an Account?",
                      screen: SignupScreen(),
                      name: 'Sign Up',
                    )
                  ],
                ),
              ]),
        ));
  }
}

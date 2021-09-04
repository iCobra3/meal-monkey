import 'package:flutter/material.dart';
import 'package:internship/screens/login_screen.dart';
import 'package:internship/widgets/dont_have_button.dart';
import 'package:internship/widgets/login_button.dart';
import 'package:internship/widgets/login_screen_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  'Sign Up',
                  style: TextStyle(fontSize: 23),
                ),
              ),
              space(10),
              const Text(
                'Add your details to sign up',
                style: TextStyle(
                    fontSize: 15, color: Color.fromRGBO(124, 125, 126, 1)),
              ),
              space(30),
              const LoginTextField(
                hintText: 'Name',
              ),
              space(20),
              const LoginTextField(hintText: 'Email'),
              space(20),
              const LoginTextField(
                hintText: 'Mobile No',
              ),
              space(20),
              const LoginTextField(
                hintText: 'Address',
              ),
              space(20),
              const LoginTextField(
                hintText: 'Password',
              ),
              space(20),
              const LoginTextField(
                hintText: 'Confirm Password',
              ),
              space(20),
              LoginButton(
                buttonName: 'Sign Up',
              ),
              space(5),
              const DontHave(
                q: 'Already have an Account?',
                screen: LoginScreen(),
                name: 'Login',
              )
            ])));
  }
}

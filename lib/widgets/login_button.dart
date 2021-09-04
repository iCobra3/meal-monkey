import 'package:flutter/material.dart';
import 'package:internship/screens/login_screen.dart';

class LoginButton extends StatelessWidget {
  // const LoginButton({Key? key}) : super(key: key);
  Widget? screen;
  BuildContext? ctx;
  String buttonName;
  LoginButton({
    Key? key,
    this.screen,
    this.ctx,
    this.buttonName = 'Login',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color.fromRGBO(252, 96, 17, 1),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.08,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              ctx!,
              MaterialPageRoute(
                builder: (ctx) => LoginScreen(),
              ));
        },
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 14,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}

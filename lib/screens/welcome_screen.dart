import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:internship/screens/login_screen.dart';
import 'package:internship/widgets/login_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 380,
              width: double.infinity,
              // color: Color.fromRGBO(252, 96, 17, 1),
              // color: Colors.black,
              child: Image.asset(
                'assets/images/screen.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Meal',
                  style: TextStyle(
                      color: Color.fromRGBO(252, 96, 17, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Monkey',
                  style: TextStyle(
                      color: Color.fromRGBO(74, 75, 77, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              'FOOD DELIVERY',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(124, 125, 126, 1),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            LoginButton(screen: LoginScreen(), ctx: context),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.08,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF05A22),
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Center(
                        child: Text(
                          "Create an Account",
                          style: TextStyle(
                            color: Color(0xFFF05A22),
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

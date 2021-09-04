import 'package:flutter/material.dart';

import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/Background icons.png',
            ),
          ),
        ),
        child: Center(
            child: Image.asset(
          'assets/images/Logo.png',
        )),
      ),
    );
  }
}

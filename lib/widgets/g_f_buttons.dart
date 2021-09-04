// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GFButton extends StatelessWidget {
  final String? buttonName;
  final Color? color;
  const GFButton({required this.buttonName, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: color,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.08,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // Navigator.push(
          //     ctx!,
          //     MaterialPageRoute(
          //       builder: (ctx) => LoginScreen(),
          //     ));
        },
        child: Text(
          buttonName!,
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

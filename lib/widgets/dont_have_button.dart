import 'package:flutter/material.dart';

class DontHave extends StatelessWidget {
  final Widget? screen;
  final String? name;

  final String? q;

  const DontHave({this.screen, this.name, this.q, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          q!,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(124, 125, 126, 1),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => screen!,
                  ));
            },
            child: Text(
              name!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(252, 96, 17, 1),
              ),
            ))
      ],
    );
  }
}

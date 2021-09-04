import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String? hintText;
  const LoginTextField({this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 352,
      child: TextFormField(
        textAlign: TextAlign.left,

        // onChanged: function,
        // controller: controller,
        decoration: InputDecoration(
            // contentPadding: EdgeInsets.only(left: 20),
            // contentPadding: EdgeInsets.symmetric(horizontal: 20),
            filled: true,
            fillColor: const Color.fromRGBO(242, 242, 242, 1),
            hintText: hintText!,
            hintStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromRGBO(182, 182, 183, 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ))),
      ),
    );
  }
}

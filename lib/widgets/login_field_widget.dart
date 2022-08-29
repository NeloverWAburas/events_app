import 'package:flutter/material.dart';

class LoginFieldWidget extends StatelessWidget {
  final String caption;
  final String hintText;
  late TextEditingController controller;
  final bool obscureText;
  final TextInputType inputType;

  LoginFieldWidget(
      {this.caption = "",
      this.hintText = "",
      this.obscureText = false,
      this.inputType = TextInputType.name,
      required TextEditingController controller}) {
    this.controller = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            caption,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff6f6f6e),
              ),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        )
      ],
    );
  }
}

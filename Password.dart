
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'E-mailLoginField.dart';

class Password extends StatefulWidget {
  final void Function(String value) onChange;
  final TextEditingController? pass_controller;
  final String? error_message;
  Password(
      {Key? key,
      required this.onChange,
      this.pass_controller,
      this.error_message})
      : super(key: key);
  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Email(
      child: TextField(
        controller: widget.pass_controller,
        obscureText: !passwordVisible,
        onChanged: (value) => widget.onChange,
        cursorColor: Colors.black45,
        decoration: InputDecoration(
            errorText: widget.error_message,
            border: InputBorder.none,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffixIcon: InkWell(
                onTap: _togglepass,
                child: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                )),
            hintText: "Enter your password"),
      ),
    );
  }

  void _togglepass() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }
}

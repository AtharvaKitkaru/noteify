import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String placeholder;
  final bool isPassword;
  const InputField(
      {Key key, @required this.placeholder, @required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      style: TextStyle( fontSize: 19),
      textAlign: TextAlign.center,
      obscureText: this.isPassword ? true : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[100],
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: '${this.placeholder}',
        hintStyle: TextStyle(color: Colors.grey[800]),
      ),
    ));
  }
}

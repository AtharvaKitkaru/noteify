import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String placeholder;
  final bool isPassword;
  const InputField({Key key, @required this.placeholder, @required this.isPassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      obscureText: this.isPassword?true:false,
      decoration: InputDecoration(
        fillColor: Colors.grey,
        border: InputBorder.none,
        focusColor: Colors.grey[600],
        hintText: '${this.placeholder}',
        hintStyle: TextStyle(color: Colors.grey[800]),
      
      ),
    ));
  }
}

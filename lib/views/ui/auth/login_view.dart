import 'package:flutter/material.dart';
import 'package:noteify/views/utils/input_field.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          bottomOpacity: 0.0,
          title: Text(
            'NOTEIFY',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            width: 500.0,
            height: 300.0,
            child: Image.network(
                'https://img.freepik.com/free-vector/login-concept-illustration_114360-757.jpg?size=338&ext=jpg'),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(children: <Widget>[
              InputField(placeholder: 'Enter your email', isPassword: false),
              InputField(placeholder: 'Enter your password', isPassword: true),
            ]),
          ),
        ],
      )),
      backgroundColor: Colors.white,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteify/views/utils/auth_button.dart';
import 'package:noteify/views/utils/input_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          // padding: EdgeInsets.all(0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'NOTEIFY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 320.0,
                  child: Image.network(
                      'https://img.freepik.com/free-vector/forgot-password-concept-illustration_114360-1095.jpg?size=338&ext=jpg'),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 350),
                  padding: EdgeInsets.all(15),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(children: <Widget>[
                    InputField(
                        placeholder: 'Enter your email', isPassword: false),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
                AuthButton(value: 'Send Password Reset Email'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'Back to Login',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            )),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:noteify/views/utils/auth_button.dart';
import 'package:noteify/views/utils/input_field.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
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
                      'https://img.freepik.com/free-vector/login-concept-illustration_114360-757.jpg?size=338&ext=jpg'),
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
                    InputField(
                        placeholder: 'Enter your password', isPassword: true),
                  ]),
                ),
                AuthButton(value: 'Login', location: '/home'),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot-password');
                  },
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Container(
                            child: Image.network(
                                'https://icons-for-free.com/iconfiles/png/512/g+google+google+2015+new+google+icon-1320190551260288871.png'),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                          ))
                    ],
                  ),
                )
              ],
            )),
          ),
        ));
  }
}

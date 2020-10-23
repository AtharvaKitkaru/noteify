import 'package:flutter/material.dart';
import 'package:noteify/views/ui/auth/forgot_password.dart';
import 'package:noteify/views/ui/main_app/home.dart';
import 'package:noteify/views/utils/theme.dart';
import 'package:noteify/views/ui/auth/login.dart';
import 'package:noteify/views/ui/auth/register.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noteify',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/register': (context) => Register(),
        '/forgot-password': (context) => ForgotPassword(),
        '/home':(context) => Home(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteify/views/utils/theme.dart';
import 'package:noteify/views/ui/auth/login_view.dart';
import 'package:noteify/views/ui/auth/register_view.dart';
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
        '/':(context)=> Login(),
        '/register':(context)=> Register(),
      },
    );
  }
}

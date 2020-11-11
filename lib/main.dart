import 'package:flutter/material.dart';
import 'package:noteify/views/utils/routes/router.dart';
import 'package:noteify/views/utils/routes/routes.dart';
import 'package:noteify/views/utils/theme.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Noteify',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: Routes.login,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteify/views/ui/auth/login.dart';
import 'package:noteify/views/utils/routes/routes.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String currentPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Drawer(
          child: ListView(
        // itemExtent: 60,
        children: [
          DrawerHeader(
            child: Column(children: [
              Expanded(
                flex: 4,
                child: Image.network(
                  'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 1,
                child: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ]),
          ),
          ListTile(
            selected: currentPage == Routes.home ? true : false,
            title: Center(child: Text('Home')),
            onTap: () {
              setState(() {
                currentPage = Routes.home;
              });
              // Navigator.of(context).pop();
              Navigator.popAndPushNamed(context, Routes.home);
            },
          ),
          ListTile(
            selected: currentPage == Routes.trash ? true : false,
            title: Center(child: Text('Trash')),
            onTap: () {
              setState(() {
                currentPage = Routes.trash;
              });
              Navigator.popAndPushNamed(context, Routes.trash);
            },
          ),
          ListTile(
            selected: currentPage == Routes.manage_labels ? true : false,
            title: Center(child: Text('Manage Labels')),
            onTap: () {
              setState(() {
                currentPage = Routes.manage_labels;
              });
              Navigator.popAndPushNamed(context, Routes.manage_labels);
            },
          ),
          ListTile(
            title: Center(child: Text('Logout')),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  ModalRoute.withName(Routes.login));
              // Navigator.popUntil(context, ModalRoute.withName(Routes.login));
            },
          ),
        ],
      )),
    );
  }
}

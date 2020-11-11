import 'package:flutter/material.dart';
// import 'dart:ui' show ImageFilter;

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      floatingActionButton: Container(
          height: 80,
          child: FittedBox(
              child: FloatingActionButton(
            onPressed: null,
            backgroundColor: Color(0xff68CDAA),
            mini: false,
            foregroundColor: Colors.white,
            child: Icon(Icons.add),
          ))),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Color(0xffC7FFEC),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 75,
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 40,
                ),
                onPressed: () {
                  _drawerKey.currentState.openDrawer();
                },
              ),
              Icon(
                Icons.search,
                size: 40,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
      drawer: new Drawer(
          child: ListView(
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
              Expanded(
                flex: 1,
                child: Text('Name'),
              )
            ]),
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

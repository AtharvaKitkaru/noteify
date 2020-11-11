import 'package:flutter/material.dart';
// import 'dart:ui' show ImageFilter;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteify/views/utils/reused_widgets/card_home.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 30),
          child: Column(children: [
            Text('NOTEIFY',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ]),
        ),
        ButtonBar(alignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: null,
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.filter, size: 18),
            onPressed: null,
          )
        ]),
        // ListView(
        //   children: [
        //     // Card(
        //     //   child: Column(children: [
        //     //     Text('Heading'),
        //     //     Text(
        //     //         'Data ajfldkjalkdfjakldfjalksfjalkdfjalkdfjaklsdfjalkdfjakldfjalksdjfalksdjfladlkjfalkdfjakldfjkasjflkasdjflakdjfaskldfjdlfj')
        //     //   ]),
        //     // )
        //     Text("Hey"),
        //   ],
        // ),
        Expanded(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[100]),
              child: SingleChildScrollView(
                  child: Column(children: [
                HomeCard(),
                HomeCard(),
                HomeCard(),
                HomeCard(),
              ]))),
        ),
      ]),
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
                  size: 35,
                ),
                onPressed: () {
                  _drawerKey.currentState.openDrawer();
                },
              ),
              Icon(
                Icons.search,
                size: 35,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
      drawer: new Drawer(
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
            title: Center(child: Text('Home')),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Center(child: Text('Trash')),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Center(child: Text('Manage Labels')),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Center(child: Text('Logout')),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

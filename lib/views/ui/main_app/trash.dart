import 'package:flutter/material.dart';
import 'package:noteify/views/ui/main_app/home.dart';
import 'package:noteify/views/utils/reused_widgets/app_drawer.dart';

class Trash extends StatefulWidget {
  Trash({Key key}) : super(key: key);

  @override
  _TrashState createState() => _TrashState();
}

// final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: drawerKey,
      child: Scaffold(
        appBar: AppBar(),
        body: Text('Trash'),
        bottomNavigationBar: BottomAppBar(
          elevation: 20,
          shape: const CircularNotchedRectangle(),
          color: Color(0xffC7FFEC),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            height: 60,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {
                    drawerKey.currentState.openDrawer();
                    // Scaffold.of(context).openDrawer();
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        ),

        //DRAWER

        drawer: AppDrawer(),
      ),
    );
  }
}

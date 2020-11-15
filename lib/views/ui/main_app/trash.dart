import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/app_drawer.dart';
import 'package:noteify/views/utils/routes/routes.dart';

class Trash extends StatefulWidget {
  Trash({Key key}) : super(key: key);

  @override
  _TrashState createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pushNamed(context, Routes.home),
          ),
        ),
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
                Builder(builder: (BuildContext context) {
                  return IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      });
                }),
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

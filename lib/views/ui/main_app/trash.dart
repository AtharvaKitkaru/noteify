import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/app_drawer.dart';
import 'package:noteify/views/utils/reused_widgets/card_trash.dart';
import 'package:noteify/views/utils/routes/routes.dart';

class Trash extends StatefulWidget {
  Trash({Key key}) : super(key: key);

  @override
  _TrashState createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Trash",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          onPressed: () => Navigator.pushNamed(context, Routes.home),
        ),
      ),
      body: Container(
        // margin: EdgeInsets.all(0),
        // height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: SingleChildScrollView(
            child: Column(children: [
          TrashCard(),
          TrashCard(),

          TrashCard(),
          TrashCard(),
          TrashCard(),
        ])),
      ),
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
    );
  }
}

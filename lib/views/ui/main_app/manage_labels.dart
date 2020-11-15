import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/app_drawer.dart';
import 'package:noteify/views/utils/routes/routes.dart';

class ManageLabels extends StatefulWidget {
  ManageLabels({Key key}) : super(key: key);

  @override
  _ManageLabelsState createState() => _ManageLabelsState();
}

class _ManageLabelsState extends State<ManageLabels> {
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
        body: Text('Manage Labels'),
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

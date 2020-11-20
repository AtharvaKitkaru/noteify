import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/app_drawer.dart';
import 'package:noteify/views/utils/routes/routes.dart';

// class Option{
//   Text text;
//   IconButton icon_button;
// }
class ManageLabels extends StatefulWidget {
  ManageLabels({Key key}) : super(key: key);

  // List <Option>
  // List options = [
  //   {"text":Text("Delete"),"icon":IconButton(icon:Icon(Icons.delete), onPressed: null,)}
  //   {"text":Text("Edit"),"icon":IconButton(icon:Icon(Icons.edit), onPressed: null,)}
  // ];

  @override
  _ManageLabelsState createState() => _ManageLabelsState();
}

enum Options { Delete, Edit }

class _ManageLabelsState extends State<ManageLabels> {
  var labels = List<String>.generate(20, (i) => "Label ${i}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          onPressed: () => Navigator.pushNamed(context, Routes.home),
        ),
        title: Text(
          'Manage Labels',
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),

      //body

      body: Container(
        child: Column(
          children: [
            // create label

            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: TextField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
                      decoration: TextDecoration.none),
                  autofocus: false,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[100],
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Create Label',
                      hintStyle: TextStyle(color: Colors.grey[600]))),
            ),

            //label list

            Expanded(
              child: Container(
                // padding: EdgeInsets.only(top: 10),
                child: ListView.builder(
                  padding:
                      EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
                  itemCount: labels.length,
                  itemBuilder: (context, index) {
                    //label

                    return Card(
                      child: ListTile(
                          // dense: true,
                          title: Text('${labels[index]}'),
                          trailing: PopupMenuButton<Options>(
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<Options>>[
                              const PopupMenuItem<Options>(
                                textStyle: TextStyle(fontSize: 4),
                                value: Options.Delete,
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  leading: Icon(
                                    Icons.delete,
                                  ),
                                  title: Text(
                                    'Delete',
                                    style: TextStyle(),
                                  ),
                                ),
                              ),
                              const PopupMenuDivider(),
                              const PopupMenuItem<Options>(
                                textStyle: TextStyle(fontSize: 4),
                                value: Options.Edit,
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  leading: Icon(Icons.edit),
                                  title: Text('Edit'),
                                ),
                              ),
                            ],
                          )
                          // IconButton(
                          //   icon: Icon(Icons.more_vert),
                          // )
                          ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),

      // Bottom Nav Bar

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

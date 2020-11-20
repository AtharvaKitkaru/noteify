import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/label.dart';

class Note extends StatefulWidget {
  Note({Key key}) : super(key: key);

  @override
  _NoteState createState() => _NoteState();
}

enum Labels { label1, label2 }

class _NoteState extends State<Note> {
  void _showOptions(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(children: [
              ListTile(
                title: Text('Add Image'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Add Audio'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Add Label'),
                onTap: () {
                  Navigator.pop(context);
                  _showLabelModal();
                },
              ),
            ]),
          );
        });
  }

  Future _showLabelModal() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select Label'),
            children: <Widget>[
              const Divider(
                color: Colors.black45,
                height: 5,
                thickness: 0.2,
                // indent: 20,
                endIndent: 0,
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Labels.label1);
                },
                child: const Text('Label 1'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Labels.label2);
                },
                child: const Text('Label 2'),
              ),
            ],
          );
        })) {
      case Labels.label1:
        break;
      case Labels.label2:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.black54,
              ),
              // color: Colors.grey,
              onPressed: null,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    minLines: 1,
                    maxLines: 5,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(vertical: 0),
                      hintText: "Title",
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(fontSize: 21),
                  ),
                  const Divider(
                    color: Colors.black45,
                    height: 5,
                    thickness: 0.2,
                    // indent: 20,
                    endIndent: 0,
                  ),
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    minLines: 2,
                    maxLines: 500,
                    // maxLines: ,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Note",
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(fontSize: 15),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Label(),
                        ],
                      ),
                    ),
                  )
                ],
              ))),
      bottomNavigationBar: BottomAppBar(
        elevation: 20,
        shape: const CircularNotchedRectangle(),
        color: Color(0xffC7FFEC),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    _showOptions(context);
                  }),
              Container(
                margin: EdgeInsets.only(left: 50),
                padding: EdgeInsets.symmetric(vertical: 11),
                child: Column(
                  children: [
                    Text(
                      'Created on',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('09/10/2020,10:30 am'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

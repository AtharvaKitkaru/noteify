import 'package:flutter/material.dart';

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
        appBar: AppBar(),
        body: Text('Manage Labels'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  final String hint;
  final List<String> options;
  DropDownButton({Key key, this.hint, this.options}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 7),
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
        child: DropdownButtonHideUnderline(
            child: DropdownButton(
          hint: Icon(Icons.sort,color: Color(0xff68CDAA),),
          // hint: Text('${widget.hint}'),
          // value: _selectedOption,
          items: widget.options
              .map((option) => DropdownMenuItem(
                  value: option,
                  child: new Text(
                    option,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  )))
              .toList(),
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue;
            });
          },
        )));
  }
}

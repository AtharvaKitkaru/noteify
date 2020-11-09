import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String value;
  final String location;
  const AuthButton({Key key, @required this.value, this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 120,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: RaisedButton(
        // onPressed: this.handleLogin(context),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          // side: BorderSide(color: Colors.grey),
        ),
        color: Colors.blueAccent[250],
        onPressed: () {
          this.location.length > 0
              ? Navigator.pushNamed(context, '${this.location}')
              : "";
        },

        child: Text(
          '${this.value}',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}

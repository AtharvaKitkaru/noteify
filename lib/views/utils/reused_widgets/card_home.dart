import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  HomeCard({Key key}) : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.grey[50],
            blurRadius: 40.0,
          ),
        ],
      ),
      constraints: BoxConstraints(minHeight: 150),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Heading',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            Text(
              'lkjlkjlkjlkjkljlkjlkjlkjlkjlkjlkjkljlkjlkjlkjlkjlkjkljlkjkljkljlkjkljlkjkljlkjlkjkljlkjlkjlkjkljkljkljlkjljljljljlkllkklfadfadfadfadfadfasfdasdfasdfasdfadfasdfasdfasdfasdfasdfadfasfsafsadfadasfasdfsfadadfasdfadfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasfasa',
              style: TextStyle(fontSize: 18.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}

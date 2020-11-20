import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/label.dart';
import 'package:noteify/views/utils/routes/routes.dart';

class HomeCard extends StatefulWidget {
  HomeCard({Key key}) : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(

        //OUTER BOX

        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.grey[50],
              blurRadius: 15.0,
            ),
          ],
        ),
        constraints: BoxConstraints(minHeight: 130),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,

        //INNER BOX

        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, Routes.note),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.2),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              // color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Masterpiece by Rick Astley',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 50),
                  margin: EdgeInsets.only(top: 11, bottom: 13),
                  child: Text(
                    'Never Gonna Give You Up \nNever Gonna Let you down\nNever Gonna Run Around and Desert You',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Label(),
                      Label(),
                      Label(),
                      Label(),
                      Label(),
                      Label(),
                      Label(),
                      Label(),
                      Label(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

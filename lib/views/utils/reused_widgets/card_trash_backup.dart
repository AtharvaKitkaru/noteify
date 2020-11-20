import 'package:flutter/material.dart';
import 'package:noteify/views/utils/reused_widgets/label.dart';
import 'package:noteify/views/utils/routes/routes.dart';

class TrashCard extends StatefulWidget {
  TrashCard({Key key}) : super(key: key);

  @override
  _TrashCardState createState() => _TrashCardState();
}

class _TrashCardState extends State<TrashCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 220,
      width: double.maxFinite,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 3.8,
        child: GestureDetector(
          // deleted note
          onTap: () => Navigator.pushNamed(context, Routes.note),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trash Card Header',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16.0),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 100),
                  margin: EdgeInsets.only(top: 11, bottom: 13),
                  child: Text(
                    'Trash Card content',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

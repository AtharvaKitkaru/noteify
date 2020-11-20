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
      // decoration: BoxDecoration(color: Colors.black),
      margin: EdgeInsets.fromLTRB(4, 0, 4, 10),
      padding: EdgeInsets.all(0),
      // height: 200,
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, Routes.note),
        child: Card(
          shadowColor: Colors.black26,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 4,
          child: Container(
            // color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trash Card Header',
                  style:
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.088),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                Container(
                  // constraints: BoxConstraints(minHeight: 80),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: SingleChildScrollView(
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
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            // textColor: Colors.white,
                            child: Icon(
                              Icons.restore_from_trash,
                              // size: 20,
                              color: Colors.black54,
                            ),
                            padding: EdgeInsets.all(6),
                            shape: CircleBorder(),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

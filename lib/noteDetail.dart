import 'package:flutter/material.dart';

class NoteDetail extends StatelessWidget {
  final String text;
  final String date;

  NoteDetail({@required this.text, @required this.date}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
       // title: Text(date + '에 작성한 메모'),
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.green[500],
        ),
        body: Container(
            margin: EdgeInsets.all(20.0),
//          alignment: Alignment.topLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
//                    fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            )
        )
    );
  }
}
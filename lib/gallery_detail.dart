import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class GalleryDetail extends StatelessWidget {
  final String title = '';
  final String imageNum;

  GalleryDetail({@required this.imageNum}) : super();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//          centerTitle: true,
//          title: new Text(
//            this.title,
//            textAlign: TextAlign.center,
//          ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
          )
        ],
        leading: new IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.create,
                  color: Colors.white,
                ),
//              onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                    Icons.share,
                    color: Colors.white
                ),
//              onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                    Icons.delete_outline,
                    color: Colors.white
                ),
//              onPressed: () {},
              ),
            ],
          )
      ),
      body: new
      Hero(
          tag: "gallery",
          child:  Container(
              child:  Center(
                child: PhotoView(
                  imageProvider: AssetImage('assets/person/image$imageNum.jpg'),
                )



              )
          ),
      ),

      backgroundColor: Colors.black,
    );
  }
}
//class Choice {
//  final String title;
//
//  const Choice({this.title});
//}
//
//const List<Choice> choices = const <Choice>[
//  const Choice(title: '사진 복구하기'),
//  const Choice(title: '...')
//];
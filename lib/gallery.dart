import 'package:flutter/material.dart';
import 'gallery_detail.dart';
import 'phone_mainScreen.dart';
import 'package:flutter/material.dart';
import 'password.dart';
import 'blog.dart';
import 'notes.dart';
import 'intro.dart';


//void main() => runApp(MyApp());
bool v = false;

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Gallary';
    return MaterialApp(
      title: title,
      home: MainPage(title: '갤러리'),
//      home: Home(),
      theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                TargetPlatform.android: CupertinoPageTransitionsBuilder()
              }
          )
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;
  int imageLength = 29;

  MainPage({this.title}) : super();

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: new IconButton(
        icon: Icon(
        Icons.arrow_back,
        ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreenPage()));
          },
        ),
          centerTitle: true,
          title: Text(
            widget.title,
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            PopupMenuButton<Choice>(
              onSelected: (Choice choice) async {
                if(choice.title == '숨김 이미지 표시'){
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordEntry()),
                  );
                  if(result != ''){
//                  print("*************"+result);
                    setState(() {
                      widget.imageLength = result;
                    });
                  }
                }
              },
              itemBuilder: (BuildContext context) {
                return choices.map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),

          ],
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.black,
            child: Row(
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
        body: Container(
          color: Colors.black,
          child: GridView.extent(
            maxCrossAxisExtent: 150.0,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            padding: const EdgeInsets.all(5.0),
            children: _buildGridTitle(context, widget.imageLength),
          ),
        )
    );
  }
}

class Choice {
  final String title;

  const Choice({this.title});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '숨김 이미지 표시'),
  const Choice(title: '...')
];

List<Widget> _buildGridTitle(BuildContext context, numberOfTitles) {
  List<GestureDetector> containers =
  List<GestureDetector>.generate(numberOfTitles, (int index) {
    final imageName = 'assets/person/image${index < 9 ? '0' : ''}${index + 1}.jpg';

    return GestureDetector(
      child: Container(
        child: Image.asset(
          imageName,
          fit: BoxFit.cover,
        ),
      ),
      onTap: () {
//        print('${index < 9 ? '0' : ''}${index + 1}');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GalleryDetail(imageNum: '${index < 9 ? '0' : ''}${index + 1}',)),
        );
      },
    );
  });
  return containers;
}
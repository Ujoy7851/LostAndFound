import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class BlogPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BlogPageState();
  }
}

class _BlogPageState extends State<BlogPage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '수정\'s 블로그',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
//            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromRGBO(3,207,93, .9
        ),
      ),
      body: WebView(
//          initialUrl: 'https://ujoy7851.github.io/',
        initialUrl: 'https://m.blog.naver.com/PostView.nhn?blogId=killerthe1004&logNo=221556110302&navType=tl',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
//        bottomNavigationBar: BottomAppBar(
//          color: Colors.black,
//          child: new Row(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            children: <Widget>[
//              IconButton(
//                icon: Icon(
//                Icons.create,
//                color: Colors.white,
//                ),
//    //              onPressed: () {},
//              ),
//              IconButton(
//                icon: Icon(
//                Icons.share,
//                color: Colors.white
//                ),
//          //              onPressed: () {},
//              ),
//              IconButton(
//                icon: Icon(
//                Icons.delete_outline,
//                color: Colors.white
//                ),
//    //              onPressed: () {},
//              ),
//            ],
//          )
//        )
    );
  }
}
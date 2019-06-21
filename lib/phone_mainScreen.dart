// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/*
https://codelabs.developers.google.com/codelabs/mdc-102-flutter/
 */


import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'message.dart';
import 'gallery.dart';
import 'phone_lockScreen.dart';
import 'blog.dart';
import 'notes.dart';
import 'history.dart';

class mainScreenPage extends StatelessWidget {
  ProgressDialog pr;

  @override
  Widget build(BuildContext context) {

    pr = new ProgressDialog(context,ProgressDialogType.Normal);
    pr.setMessage('Loading...');

    return Scaffold(
      body:
      Container(
          padding: EdgeInsets.only(top: 580.0, left: 5.0),
    //      padding: EdgeInsets.only(top: 680.0, left: 5.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/person/j3.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _buildButton(Icons.message, 'message', Colors.indigo[500], 1, context),
                  _buildButton(Icons.insert_photo, 'photo', Colors.red[500], 2,  context),
                  _buildButton(Icons.assignment, 'note', Colors.green[500], 3, context),
                  _buildButton(Icons.phone, 'phone', Colors.lightBlue[500], 4, context),
                  _buildButton(Icons.tag_faces, 'blog',Colors.orangeAccent, 5, context),
                ],
              ),
//                    Row(
//                      children: <Widget>[
//
////                        _buildButton(Icons.assignment, 'note', Colors.indigo[400]),
//                      ],
//                    ),
            ],
          )
      ),

    );
  }

  Widget _buildButton(IconData icon, String title, Color color, int t, context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 5.0),
          child: Container(
            decoration:
            BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: GestureDetector(
              onTap: () {
                //Navigate to other pages
                t==1? Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage())) :
                    t==2? Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryPage())) :
                    t==3? Navigator.push(context, MaterialPageRoute(builder: (context) => NotesList())) :
                    t==4? Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage())) :
                    t==5? Navigator.push(context, MaterialPageRoute(builder: (context) => BlogPage())) : null;
              },
              child: Padding(
                padding:EdgeInsets.all(10.0),
                child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
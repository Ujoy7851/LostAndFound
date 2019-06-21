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
import 'package:flutter/material.dart';
import 'phone_mainScreen.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shimmer/shimmer.dart';

class lockScreenPage extends StatelessWidget {
  ProgressDialog pr;



  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context,ProgressDialogType.Normal);
    pr.setMessage('Please wait...');


    return Scaffold(

/*
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            print('back button');
            Navigator.pop(context);
          },
        ),
        title: Text('휴대폰 잠금화면'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              print('Next');
              pr.show();
              Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreenPage()));

            },
          ),
        ],
      ),

      */

      body:
          GestureDetector(
            onDoubleTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreenPage()));
            },
            child:
            Container(
              constraints: BoxConstraints.expand(
                height: 690.0
              ),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/system/mainEX.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 50.0,),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[400],
                    highlightColor: Colors.white,
                    child: Text(
                      '<< 화면을 두 번 터치해 잠금해제 >>',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[500],
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ),
          )

      //  body: AsymmetricView(products: ProductsRepository.loadProducts(Category.all)),


    );


  }
}

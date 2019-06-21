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

import 'package:flip_panel/flip_panel.dart';
import 'package:flutter/material.dart';
import 'phone_lockScreen.dart';
import 'intro.dart';
import 'package:flip_panel/flip_panel.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final digits1 = ['핸']; //flip panel
  final digits2 = ['드', '핸']; //flip panel
  final digits3 = ['핸', '드', '폰']; //flip panel
  final digits4 = ['폰','핸', '드', '의']; //flip panel
  final digits5 = ['의', '핸', '드', '폰',  '주']; //flip panel
  final digits6 = ['핸','주',  '폰', '의','드',  '인']; //flip panel
  final digits7 = [ '주', '인', '드', '폰', '핸', '의', '은']; //flip panel
  final digits8 = [ '은', '핸', '주', '인', '드', '폰', '의', '누']; //flip panel
  final digits9 = ['드', '핸','의', '주',  '폰', '은', '누',  '인','구']; //flip panel
  final digits0 = ['핸', '드', '폰', '의', '주', '인', '은', '누', '구', '?']; //flip panel


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 16.0),
              Image.asset('assets/system/Logo_gif.gif'),
              //  Image.asset('assets/logo.png'),
                SizedBox(height: 16.0),
              ],
            ),
            SizedBox(height: 16.0),



            // [Name]
            Row(
              children: <Widget>[
                SizedBox(width: 20.0,),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits1[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits1.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 10,
                    )
                ),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits2[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits2.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 5,
                    )
                ),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits3[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits3.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 3,
                    )
                ),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits4[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits4.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 2,
                    )
                ),

                SizedBox(width: 15.0,),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits5[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits5.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 2,
                    )
                ),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits6[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits6.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 1,
                    )
                ),


                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits7[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits7.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 1,
                    )
                ),

                SizedBox(width: 15.0,),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits8[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits8.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 1,
                    )
                ),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits9[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits9.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 1,
                    )
                ),

                SizedBox(
                    child:
                    FlipPanel.builder(
                      itemBuilder: (context, index) => Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          '${digits0[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      itemsCount: digits0.length,
                      period: const Duration(milliseconds: 1000),
                      loop: 1,
                    )
                ),

              ],
            ),





            // TODO: Add button bar (101)
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Intro()));
                        },
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'assets/system/star.png',
                          height: 80.0,
                          width: 250.0,
                        ),
                      ),

                      SizedBox(width: 30.0,)

                    ],
                  ),

                ]
            ), //////////////////////////////////
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
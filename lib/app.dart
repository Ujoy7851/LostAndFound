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

import 'package:flutter/material.dart';

import 'phone_lockScreen.dart';
import 'login.dart';
import 'package:animated_splash/animated_splash.dart';


// TODO: Convert ShrineApp to stateful widget (104)
class lostAndFoundApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return

      MaterialApp(


      title: 'Lost&Found',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home:
          AnimatedSplash(imagePath: 'assets/splash.png', home: LoginPage(),
          duration: 3000,
            type: AnimatedSplashType.StaticDuration,
          )
   //   initialRoute: '/login',
  //    onGenerateRoute: _getRoute,

    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Shrine Theme (103)
// TODO: Build a Shrine Text Theme (103)

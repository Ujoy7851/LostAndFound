import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flip_card/flip_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'phone_lockScreen.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/src/model/page_view_model.dart';
import 'package:introduction_screen/src/ui/intro_content.dart';

const oneSec = const Duration(seconds:1);
const interval = const Duration(minutes: 1);
const iconCancel = Icons.cancel;
const iconStart = Icons.alarm;


typedef void OnError(Exception exception);
AudioPlayer audioPlayer = AudioPlayer();


class Intro extends StatefulWidget {
  int i = 0;
  bool isMute = false;

  @override
  IntroState createState() {
    audioPlayer.play('assets/audios/Theme_full.mp3', isLocal: true);
    return IntroState();
  }
}



class IntroState extends State<Intro> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton(
              onPressed: () {

                setState(() {
                  widget.isMute = !widget.isMute;
                });
              },
              child: Image.asset(
                widget.isMute ? 'assets/system/soundBtn2.png' : 'assets/system/soundBtn1.png',
                height: 50.0,
                width: 50.0,
              ),
            ),
          ],
          backgroundColor: Colors.black,
        ),
        body:
            FlipCard(front: Container(
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Image.asset(images[widget.i], fit: BoxFit.fitWidth,)
                  ),

                  SizedBox(
                    width: 250.0,
                    child: TypewriterAnimatedTextKit(
                        duration: Duration(milliseconds: 10000),
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [texts[widget.i]],
                        textStyle: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Agne",
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                  ),
                ],
              ),
            ), back:
            Container(
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Image.asset(images1[widget.i], fit: BoxFit.fitWidth,)
                  ),

                  SizedBox(
                    width: 250.0,
                    child: FadeAnimatedTextKit(
                        duration: Duration(milliseconds: 10000),
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [texts1[widget.i]],
                        textStyle: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Agne",
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                  ),
                ],
              ),
            )
            ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    widget.i == 0 ? null : widget.i--;
                  });
                },
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/system/backBtn1.png',
                  height: 50.0,
                  width: 50.0,
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    widget.i == 3 ? Navigator.push(context, MaterialPageRoute(builder: (context) =>lockScreenPage())) : widget.i++;
                  });
                },
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/system/nextBtn1.png',
                  height: 50.0,
                  width: 50.0,),
              ),

            ],
          ),
        )
    );
  }
}

const List<String> images = const <String>[
  'assets/system/intro1.png',
  'assets/system/intro2.png',
  'assets/system/intro3.png',
  'assets/system/intro4.png'
];


const List<String> images1 = const <String>[
  'assets/system/i1.png',
  'assets/system/i2.png',
  'assets/system/i3.png',
  'assets/system/i4.png'
];

const List<String> texts = const <String>[
  '때는 바로 어제. \n갑작스레 내리는 비를 피해 \n당신은 바로 옆에 있는 \n작은 상가 건물로 들어갔다.',
  '비는 점점 거세지고 있었고, \n당신은 상가 건물 계단에 \n잠시 앉아있기로 한다.',
  '옷을 적신 빗물을 털어내며 \n주위를 둘러보던 당신의 시야에는 \n낯선 휴대폰 하나가 계단 위에 \n떨어져 있는 것을 보게된다.',
  '어느새 비는 그쳤고, \n버려진 휴대폰을 맡길 마땅한 곳이 \n생각나지 않은 당신은 \n휴대폰을 챙겨 밖을 나서게된다.',
];

const List<String> texts1 = const <String>[
  '[Lost-and-Found] 분실물 센터\n분실물 보관소를 뜻하는 영어 단어 이다.',
  '상상을 하지 않으면 공포 또한 없다네 \n\n- 셜록홈즈, 주홍색연구 -',
  '내가 사는 보람은 \n늘 생존의 지루함에서 \n벗어나려고 몸부림치는데 있다.\n\n- 셜록홈즈 -',
  'Chapter 1: \n잃어버린 핸드폰의 주인을 찾아라',
];
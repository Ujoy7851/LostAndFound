// Copyright 2017, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'message.dart';
import 'password.dart';

import 'chat_messages.dart';
import 'chat_model.dart';
import 'current_state.dart';

import 'package:flutter/cupertino.dart';

String ans;
bool v = curState.mv;

class messageDetail extends StatefulWidget{
  _messageDetailState createState() => _messageDetailState(model: model);
//  final curState cs;
  final ChatModel model;
// ChatMessage message;

  messageDetail({this.model});

}


class _messageDetailState extends State<messageDetail> {
  final ChatModel model;
  final AnimationController animationController;
  _messageDetailState({this.model, this.animationController});
  int curS = 0;
  int botSelectNum = 0;
  bool CanbotSelect = false;


@override
  Widget build(BuildContext context) {
  v = curState.mv;
  curState.cm = ans;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.indigo[500],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('back button');
            Navigator.pop(context);
          },
        ),
        title: Text(model.name),
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: (Choice choice) async {
              if(choice.title == '메세지 복구하기'){
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordEntry()),
                );
                if(result != ''){
//                  print("*************"+result);
                  setState(() {
                   // widget.imageLength = result;
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
      ),

      bottomNavigationBar:
//      model.name == '김예지'? bottomSelector('응 안가. 피곤해', '제가 핸드폰을 주워서.. 혹시 어떻게 하면 될까요?', '(답장하지 않는다)', true) :
          model.name == '010-9976-1696'? bottomSelector('아 예예 핸드폰 습득한 사람입니다.', '경찰서로 가져다 드리면 될까요?', '(답장하지 않는다)', true):
          model.name == '김제희14 데통처'? bottomSelector('아뇨 저 드랍했어요. 안할랍니다 ^^', '핸드폰을 잃어버리신 것 같아서, 지금 주인 찾아드리고 있습니다.', '(답장하지 않는다)', true):
          null,

      body:
      model.name == '김예지'?
      ListView(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      children: <Widget>[
        DateDevideBuilder('2019년 5월 14일', true),
        ReceiveMessageBuilder(model, '야야야야 너 과제 함?', '14:31', 60.0, true),
        SendMessageBuilder(model, 'ㄴㄴㄴ안함 걍 안할려고.. 난 망했어ㅠㅠ', '14:39',80.0, true),
        ReceiveMessageBuilder(model, '아 그럼 나랑 같이하자 나 너네집 가서 해도됨??', '15:46', 80.0, true),
        SendMessageBuilder(model, '아 콜 치킨각ㅋㅋ', '15:51',60.0, true),
        ReceiveMessageBuilder(model, 'ㅇㅋㄷㅋ ㅋㅋㅋ팀플 끝나고 10시쯤 갈게', '17:20', 80.0, true),
        ReceiveMessageBuilder(model, '아 미안 팀플 개 늦게 끝남...좀 늦을듯', '21:58', 80.0, true),
        SendMessageBuilder(model, 'ㄴㄴ ㄱㅊ 천천히 오셈', '21:59',60.0, true),

        DateDevideBuilder('2019년 5월 15일', true),
        SendMessageBuilder(model, '야 있잖아..그 부탁있는데', '18:45', 60.0, true),
        ReceiveMessageBuilder(model, '안돼^^', '18:59',60.0, true),
        SendMessageBuilder(model, '됐거든ㅋ', '19:05', 60.0, true),


        DateDevideBuilder('2019년 5월 16일', v), ///
        SendMessageBuilder(model, '야 나 핸드폰 주웠음 ㅋㅋㅋ주인 찾아줘야 할 듯', '14:03', 80.0, v),///
        ReceiveMessageBuilder(model, '엥 그냥 경찰서 맡겨 번거롭게 왜?', '15:31',60.0, v),///
        SendMessageBuilder(model, '아니 연락왔는데, 직접 전해달래 경찰서 갈 시간없다고', '15:37', 80.0, v),///
        ReceiveMessageBuilder(model, '개 염치없네 ㅋㅋㅋㅋ 그래서 언제 만나는데?', '16:25',80.0, v),///
        SendMessageBuilder(model, '이따 저녁때 어떻냐고 하던데? 마침 우리 집 근처임ㅋㅋ', '17:08', 80.0, v),///
        ReceiveMessageBuilder(model, 'ㅋㅋ잘 갔다오셈 괜히 이상한 사람이면 어떡함?? 같이 가주리???', '19:15',80.0, v),///
        SendMessageBuilder(model, 'ㄴㄴ괜찮 ㅋㅋ 갔다올게', '21:05', 60.0, v),///
        ReceiveMessageBuilder(model, '야야야 지금 집임?', '23:24',60.0, v),///
        ReceiveMessageBuilder(model, '야야야야야야야야아ㅏ야아야야야야ㅑ야야', '23:47',80.0, v),///

        DateDevideBuilder('2019년 5월 17일', v), ///
        ReceiveMessageBuilder(model, '너 어디야?? 왜 연락이 없어??????', '00:07', 60.0, v), ///
        ReceiveMessageBuilder(model, '전화는 왜 안받냐??? 진짜 무슨 일 생김???', '00:45', 80.0, v),///
        ReceiveMessageBuilder(model, '제발답장좀해.....', '01:00', 60.0, v),///
        ReceiveMessageBuilder(model, '신고해도됨??? 무슨일 생긴거 아니야???', '01:04', 80.0, v),///
        SendMessageBuilder(model, '아냐 신고하지마 나 괜찬아 잠깐 바람좀 쐣어', '01:06', 80.0, v),///
        ReceiveMessageBuilder(model, '뭐야 깜짝놀랐잖아 ㅋㅋㅋㅋ전화는 왜 또 안받는데?', '01:09', 80.0, v),///
        SendMessageBuilder(model, '집에 엄마왓어 잠 자야할 듯', '02:18',60.0, v),///
        ReceiveMessageBuilder(model, '갑자기?? ㅋㅋ 난 또 무슨일 생긴줄.. 좋은시간 보내라ㅋ', '02:22', 80.0, v),///

        DateDevideBuilder('2019년 5월 18일', true),
        ReceiveMessageBuilder(model, '너 왜 학교 안나옴?? ㅋㅋㅋㅋㅋ늦잠잤냐', '10:02', 80.0, v),///
        ReceiveMessageBuilder(model, '야 씹냐 ㅋㅋㅋㅋㅋㅋㅋㅋ', '10:16', 60.0, v),///
        ReceiveMessageBuilder(model, '또 뭔일 생겼냐???', '10:36', 60.0, v),///
        SendMessageBuilder(model, '아니 괜찬아 감기 걸린듯.. 병원갓다왓어', '11:09', 80.0, v),///
        ReceiveMessageBuilder(model, '바보는 감기 안걸린다던데..?ㅋ', '11:11', 60.0, true),

        DateDevideBuilder('2019년 5월 19일', true),
        ReceiveMessageBuilder(model, '쉅 안옴??', '10:11', 60.0, true),

        //    MessageManager(model, 0),
      ],
      ) : model.name == '010-9976-1696' && ans == null?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('오늘', true),
          ReceiveMessageBuilder(model, '저 폰 주인인데요, 혹시 연락보시면 답장 좀 부탁드려요 ㅜㅜㅜㅜ', '08:22', 80.0, true),
        ],
      ) : model.name == '엄마'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('오늘', true),
          ReceiveMessageBuilder(model, '알겠어 딸~~^^ 앞으로는 미리미리 말해줘~~ 화이팅~~~~~~ 사랑한다^^', '01:02', 100.0, true),
        ],
      ) : model.name == '박서아'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 19일', true),
          ReceiveMessageBuilder(model, '답장좀 해됴...ㅠ', '23:49', 60.0, true),

        ],
      ) : model.name == '(통신사요금제)'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 19일', true),
          ReceiveMessageBuilder(model, '(신규 요금제) [kkt] 이달의 대박 찬스! 이벤트 증점품이 쏟아진가? 혜택의 5월, 여름 바캉스 쿠폰응모까지? 자세한 사항은 아래의 링크를 참조해주세요. \n\nhttps://www.kkt.com/', '16:01', 200.0, true),

        ],
      ) : model.name == '114'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 19일', true),
          ReceiveMessageBuilder(model, '[5월 명세서] 고객님이 가입하신 요금제 5월 명세서가 도착했습니다. \n\nhttps://www.kk5t.com/', '16:01', 160.0, true),

        ],
      ) : model.name == '김제희14 데통처'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 19일', true),
          ReceiveMessageBuilder(model, '발표 자료 준비는 다 하셨어요?', '08:20', 60.0, true),

        ],
      ) : model.name == '알바 GS사장'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 18일', true),
          ReceiveMessageBuilder(model, '그동안 고생했어 ^^ 우러급은 입금해놨고, 틀린거 있음 얘기해줘', '17:37', 100.0, true),

        ],
      ) : model.name == '054-260-1378'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 18일', true),
          ReceiveMessageBuilder(model, '[MS중심대]고난테크놀로지 특강 안내입니다. 공프기 장소는 MTH 312호입니다.', '11:55', 100.0, true),

        ],
      ) : model.name == '수미니'?
      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('2019년 5월 18일', true),
          ReceiveMessageBuilder(model, '치킨 ㄹㅇ 개 땡긴다', '02:16', 60.0, true),
        ],
      ) :
      model.name == '010-9976-1696' && ans != null?

      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          DateDevideBuilder('오늘', true),
          ReceiveMessageBuilder(model, '저 폰 주인인데요, 혹시 연락보시면 답장 좀 부탁드려요 ㅜㅜㅜㅜ', '08:22', 80.0, true),
          SendMessageBuilder(model, ans, '11:45', 80.0, true),
        ],
      )


          :


      ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: <Widget>[
          ReceiveMessageBuilder(model, '에러 state입니다', '4:44', 60.0, true),
        ],
      )



      //  body: AsymmetricView(products: ProductsRepository.loadProducts(Category.all)),
    );
  }
}


Widget bottomSelector(String s1, String s2, String s3, bool vis){
  return Visibility (
    visible: vis,
    child: BottomAppBar(
        color: Colors.white,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    Wrap(
                        children: [
                          ButtonTheme(
                              height: 150.0,
                              minWidth: 100.0,
                              child:
                              SizedBox(
                                width: 115.0,
                                child: FlatButton(
                                  color: Colors.indigo[500],
                                  onPressed: () => ans = s1,
                                  child: Text(
                                      s1,style: TextStyle(color: Colors.white)
                                  ),
                                ),
                              )


                          ),

                          SizedBox(width: 15.0),

                          ButtonTheme(
                            height: 150.0,
                            minWidth: 100.0,
                            child:
                            SizedBox(
                              width: 115.0,
                              child:
                              FlatButton(
                                color: Colors.indigo[500],
                                onPressed: () => ans = s2,
                                child: Text(
                                    s2,style: TextStyle(color: Colors.white)
                                ),
                              ),
                            ),
                          ),


                          SizedBox(width: 15.0),

                          ButtonTheme(
                            height: 150.0,
                            minWidth: 100.0,
                            child:  SizedBox(
                                width: 115.0,
                                child:
                                FlatButton(
                                  color: Colors.indigo[500],
                                  onPressed: () => ans = s3,
                                  child: Text(
                                    s3, style: TextStyle(color: Colors.white),
                                  ),
                                )
                            ),
                          ),

                        ]

                    )
                    // TODO: Add buttons (101)

                  ],
                ),


              ],
            ),


          ],
        )
    )
  );

}


Widget SendMessageBuilder(ChatModel model, String s, String t, double h, bool vis){
  return Visibility (
      visible: vis,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Text(t,style: TextStyle(color: Colors.grey[700]),
              textAlign: TextAlign.end,
            ),
        title: Container(margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 5.0),
        height: h,
        width: 42.0,
          color: Colors.indigo[500],
          child:
          Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child:
          SizedBox(
            child:
            Text(s,style: TextStyle(color: Colors.white), textAlign: TextAlign.left,),
          ),),
        ),
        //  subtitle:
        trailing: CircleAvatar(radius: 24.0,),
        onTap: (){},

      ),
    ],
  ),
  );
}

Widget ReceiveMessageBuilder(ChatModel model, String s, String t, double h, bool vis){
  return
    Visibility (
      visible: vis,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[400],
              radius: 24.0,
            ),
            onTap: (){},

            title: Container(margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 5.0),
          height: h,
          width: 42.0,
          color: Colors.grey[200],
          child:
          Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child:
            SizedBox(
              child:
              Text(s,style: TextStyle(color: Colors.black), textAlign: TextAlign.left,),
            ),),
        ),

        //  subtitle:
        trailing: Text(t,style: TextStyle(color: Colors.grey[700]),
          textAlign: TextAlign.end,
        ),
      ),
    ],
      ),
  );
}

Widget DateDevideBuilder(String s, bool vis){
  return
    Visibility (
      visible: vis,
      child: Column(
    children: <Widget>[
      Divider(
        height: 5.0,
      ),
      ListTile(
        title: Text(s,style: TextStyle(color: Colors.grey[700], fontSize: 15.0), textAlign: TextAlign.center,
      ),
      ),
    ],
      ),
  );

}


class Choice {
  final String title;

  const Choice({this.title});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '메세지 복구하기'),
  const Choice(title: '...')
];
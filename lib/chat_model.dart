import 'current_state.dart';

class ChatModel {
  final String ProfileImage;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.ProfileImage, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      ProfileImage: "assets/person/p1.png",
      name: "김예지",
      datetime: "10:11",
      message: "쉅 안옴??",
    ),
    ChatModel(
      ProfileImage: "assets/person/anonymous.png",
      name: "010-9976-1696",
      datetime: "8:22",
      message:curState.cm
    ),
    ChatModel(
      ProfileImage: "assets/person/p2.png",
      name: "엄마",
      datetime: "01:02",
      message: "알겠어 딸~~^^ 앞으로는 미리미리 말해줘~~ 화이팅~~~~~~ 사랑한다^^",
    ),

    ChatModel(
      ProfileImage: "assets/person/p6.png",
      name: "박서아",
      datetime: "5월 19일",
      message: "답장좀 해됴...ㅠ",
    ),


    ChatModel(
      ProfileImage: "assets/person/anonymous.png",
      name: "(통신사요금제)",
      datetime: "5월 19일",
      message: "(신규 요금제) [kkt] 이달의 대박 찬스! 이벤트 증정품이 쏟아진다? 혜택..",
    ),
    ChatModel(
      ProfileImage: "assets/person/anonymous.png",
      name: "114",
      datetime: "5월 19일",
      message: "[5월 명세서] 고객님이 가입하신 요금제 5월 명세서가 도착했습니다.",
    ),

    ChatModel(
      ProfileImage: "assets/person/p3.png",
      name: "김제희14 데통처",
      datetime: "5월 19일",
      message: "발표 자료 준비는 다 하셨어요?",
    ),

    ChatModel(
      ProfileImage: "assets/person/anonymous.png",
      name: "알바 GS사장",
      datetime: "5월 18일",
      message: "그동안 고생했어 ^^ 월급은 입금해놨고, 틀린거 있음 얘기해줘",
    ),

    ChatModel(
      ProfileImage: "assets/person/anonymous.png",
      name: "054-260-1378",
      datetime: "5월 18일",
      message: "[Web발신]\n[MS중심대]고난테크놀로지 특강안내...",
    ),

    ChatModel(
      ProfileImage: "assets/person/p3.png",
      name: "수미니",
      datetime: "5월 18일",
      message: "치킨 ㄹㅇ 개 땡긴다",
    ),

  ];
}
import 'chat_model.dart';
import 'current_state.dart';


class ChatMessage {
  final String sendTime1;
  final String sendTime2;
  final String receiveText1;
  final String receiveText2;
  final String sendText1_1;
  final String sendText1_2;
  final String sendText1_3;
  final String sendText2_1;
  final String sendText2_2;
  final String sendText2_3;

  ChatMessage({this.sendTime1, this.receiveText1,this.receiveText2,this.sendText1_1,this.sendText2_1,this.sendTime2,this.sendText1_2,this.sendText1_3,this.sendText2_2,this.sendText2_3});

  static final List<ChatMessage> messageData = [
    ChatMessage(
      sendTime1: "11:17", //김예지
      receiveText1: "뭐냐ㅋㅋㅋ오늘 과제나옴 ㅅㄱ",
      sendText1_1:"ㄷㄷㄷㄷㄷ 과제 먼데? 미안;;",
      sendText1_2: "오 너 다하고 나 보여주면 되겠네",
      sendText1_3: "아 휴학각이다 ㄹㅇ 과제 너무 많아;;; 핵극혐이야",

      sendTime2: "11:18", //01099761696
      receiveText2: "경찰서를 제가 갈 수가 없어서ㅠㅠ 오늘 중에 핸드폰 꼭 찾고 싶은데..혹시 가능하신가요?",
      sendText2_1: "아 네, 언제가 괜찮으세요?",
      sendText2_2: "지금 괜찮으세요?",
      sendText2_3: "(답장하지 않는다)",
    ),

    ChatMessage(
      sendTime1: "", //엄마
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", //김제희 14 데통처
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", //김제희 14 데통처
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", // 수미니
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", //김예지
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", // 01099761696
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", //김예지
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", //GS 오전 김재형
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage( //01099761696
      sendTime1: "",
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", // 박서아
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", //김예지
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", // 김제희 14 데통처
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", // 01099761696
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", //수미니
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", //김예지
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", //01099761696
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),

    ChatMessage(
      sendTime1: "", //김예지
      receiveText1: "",
      sendText1_1:"",
      sendText1_2: "",
      sendText1_3: "",

      sendTime2: "", //01099761696
      receiveText2: "",
      sendText2_1: "",
      sendText2_2: "",
      sendText2_3: "",
    ),



  ];
}
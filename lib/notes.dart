import 'package:flutter/material.dart';
import 'noteDetail.dart';

class NotesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '메모',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,

          ),
        ),
//        leading: IconButton(
//            icon: Icon(Icons.note),
//            onPressed: null),
        backgroundColor: Colors.green[500],
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return _buildRow(context, notes[index]);
          },
//        separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: notes.length),
    );
  }

  Widget _buildRow(BuildContext context, Note note) {
//    String title = note.text.length < 20 ? note.text : note.text.substring(0, 19) + '..';

    return Card(
      child: ListTile(
        title: Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              note.text,
              maxLines: 1,
            )
        ),
        subtitle: Text(
          note.date,
          style: TextStyle(
              fontSize: 12.0
          ),
        ),
//      trailing: Icon(Icons.delete),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NoteDetail(text: note.text, date: note.date)),
          );
        },
      ),
    );
  }
}

class Note {
  final String text, date;

  const Note({this.text, this.date});
}

const List<Note> notes = const <Note>[
  const Note(text: '<방탄 투어 일정>'
      '\n\n2019.04.11 - 싱가폴 투어공연'
      '\n2019.04.16-17 - 일본 스타디움공연'
      '\n2019.04.18-19 - 미국 엔듀공연장'
      '\n2019.04.22 - 헝가리 제프틴회관공연'
      '\n2019.04.25-26 - 이탈리아 투어공연'
      '\n2019.04.28 - 프랑스 제너럴스타디움공연', date: '2019-05-24'),
  const Note(text: '안무팀장 정호석이 진짜 잘생기고 진국이고 대박적으로 머박적으로 사랑스러운 이유들'
      '\n\b1. 춤 개 잘춤'
      '\n2. 잘생김'
      '\n3. 귀여움', date: '2019-05-15'),
  const Note(text: '1. 동해물과 백두산이 마르고 닳도록'
      '\n하느님이 보우하사 우리나라 만세'
      '\n무궁화 삼천리 화려 강산'
      '\n대한 사람 대한으로 길이 보전하세'
      '\n\n2. 남산 위에 저 소나무 철갑을 두른 듯'
      '\n바람 서리 불변함은 우리 기상일세'
      '\n무궁화 삼천리 화려 강산'
      '\n대한 사람 대한으로 길이 보전하세'
      '\n\n3. 가을 하늘 공활한데 높고 구름 없이'
      '\n밝은 달은 우리 가슴 일편단심일세'
      '\n무궁화 삼천리 화려 강산'
      '\n대한 사람 대한으로 길이 보전하세'
      '\n\n4. 이 기상과 이 맘으로 충성을 다하여'
      '\n괴로우나 즐거우나 나라 사랑하세'
      '\n무궁화 삼천리 화려 강산'
      '\n대한 사람 대한으로 길이 보전하세', date: '2019-05-11'),
  const Note(text: '시험 일정'
      '\n\n2019.06.10 3교시: 심개'
      '\n2019.06.10 5교시: DB'
      '\n2019.06.11 2교시: 컴파일러'
      '\n2019.06.11 창문리'
      '\n2019.06.15 컴파 과제', date: '2019-05-03'),
  const Note(text: '아아아아 ㄹㅇ 졸리다ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ', date: '2019-04-24'),
  const Note(text: '중요 메모 - 데통처 수업내용(시험에 나옴)'
      '\n다 나옴 ㅋㅋㅋㅋㅋㅋㅋ아니 왜 이게 다 중요한거임', date: '2019-04-15'),
  const Note(text: '정호석 태어나줘서 고마워ㅠㅠㅠㅠㅠㅠ', date: '2019-04-11'),
  const Note(text: '작곡 악상 정리', date: '2019-04-03'),
  const Note(text: '째이호오오오오오오오오오오오ㅗ옹옵!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', date: '2019-04-24'),
  const Note(text: '사탕, 초콜릿, 햄버거, 피자 등', date: '2019-04-15'),
  const Note(text: '<<<빚쟁이 목록>>>'
  '\n\n김예지 치킨 17000원'
      '\n서준석 1300원'
      '\n정승영 2000원', date: '2019-04-11'),
  const Note(text: '아 몰랔ㅋㅋㅋㅋㅋ으 과제 구현 다 못했어ㅠㅠㅠ너무 우울해요 진짜로ㅠㅠㅠㅠ크흑 ㅠㅠㅠ', date: '2019-04-03')
];
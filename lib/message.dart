import 'package:flutter/material.dart';
import 'detail_message.dart';


import 'chat_messages.dart';
import 'chat_model.dart';
import 'current_state.dart';


class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메세지함'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('back button');
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.indigo[500],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => messageDetail(
                    //  cs: ,
                      model: _model,

                    )));
                  },
                  title: Row(
                    children: <Widget>[
                      Text(_model.name),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 14.0,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
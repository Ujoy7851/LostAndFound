import 'package:flutter/material.dart';
import 'gallery_detail.dart';
import 'gallery.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'current_state.dart';

bool ok = false;

class PasswordEntry extends StatefulWidget {
  int length = 4;
  double fieldWidth = 40.0;



  @override
  State<StatefulWidget> createState() {
    return _PasswordEntryState();
  }
}

class _PasswordEntryState extends State<PasswordEntry> {
  List<String> _password;
  List<FocusNode> _focusNodes;
  List<TextEditingController> _textControllers;
  int imageLength = 30;
  ProgressDialog pr;


  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context,ProgressDialogType.Normal);
    pr.setMessage('Loading...');
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          'Password',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,

      body: Container(
        child:
        Column(
          children: <Widget>[
            generateTextFields(context),
          ],
        )

      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _password = List<String>(widget.length);
    _focusNodes = List<FocusNode>(widget.length);
    _textControllers = List<TextEditingController>(widget.length);
  }

  @override
  void dispose() {
    pr.show();
    _focusNodes.forEach((FocusNode f) => f.dispose());
    _textControllers.forEach((TextEditingController t) => t.dispose());
    super.dispose();
  }

  Widget generateTextFields(BuildContext context) {
    List<Widget> textFields = List.generate(widget.length, (int i) {
      return buildTextField(context, i);
    });

    FocusScope.of(context).requestFocus(_focusNodes[0]);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children:
        textFields,
      ),
      margin: EdgeInsets.only(top: 150.0),
    );
  }

  Widget buildTextField(BuildContext context, int i) {
    _focusNodes[i] = FocusNode();
    _textControllers[i] = TextEditingController();

    _focusNodes[i].addListener(() {
      if (_focusNodes[i].hasFocus) {
        _textControllers[i].clear();
      }
    });

    return Container(
        width: 50.0,
        margin: EdgeInsets.all(5.0),
        child: TextField(
          controller: _textControllers[i],
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          focusNode: _focusNodes[i],
          obscureText: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            counterText: "",
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Colors.black),
            ),
          ),
          onChanged: (String str) {
            _password[i] = str;
            if(i == widget.length - 1) {
              if (_password.join() == '0218'){
                curState.mv = true;
                Navigator.pop(context, imageLength);

              } else {
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text('Password'),
                        content: Text('Wrong!\n(hint: ♥내 사랑 탄신일♥)'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () {
                              pr.show();
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
                _textControllers.forEach((TextEditingController t) => t.clear());
                FocusScope.of(context).requestFocus(_focusNodes[0]);
              }
            } else {
              FocusScope.of(context).requestFocus(_focusNodes[i+1]);
              _password.join();
            }
          },
          onSubmitted: (String str) {
            if (_password.join() == '0218') {
              print('yes');
              Navigator.pop(context);
            } else {
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text('Password'),
                      content: Text('Wrong!\n(hint: ♥내 사랑 탄신일♥)'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('OK'),
                          onPressed: () {
                            pr.show();
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  });
              _textControllers.forEach((TextEditingController t) => t.clear());
              FocusScope.of(context).requestFocus(_focusNodes[0]);
            }
          },
        )
    );
  }
}
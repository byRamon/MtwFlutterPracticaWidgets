import 'package:flutter/material.dart';
import 'dart:math';

class UserInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        //appBar: AppBar(title: Text('Flutter'),),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Text';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text( text,
                style: TextStyle(fontSize: 24),
              ),
            ),
            RaisedButton(
              child: Text('Go to second screen', style: TextStyle(fontSize: 24),),
              onPressed: () {
                _awaitReturnValueFromSecondScreen(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    final result = await Navigator.push( context, MaterialPageRoute( builder: (context) => SecondScreen(), ));
    setState(() {
      text = result;
    });
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          RaisedButton(
            child: Text('Send text back', style: TextStyle(fontSize: 24),),
            onPressed: () {
              _sendDataBack(context);
            },
          )
        ],
      ),
    );
  }
  void _sendDataBack(BuildContext context) {
    String textToSendBack = textFieldController.text;
    Navigator.pop(context, textToSendBack);
  }
}
/*
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color textColor = Colors.black;
  String _textString = 'Hello world';
  bool _checkedValue = false;
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                controller: textFieldController,
                style: TextStyle(fontSize: 24, color: Colors.black,),
              ),
            ),
            RaisedButton(
              child: Text('Go to second screen', style: TextStyle(fontSize: 24),),
              onPressed: () {
                _sendDataToSecondScreen(context);
              },
            )
          ]
        )
      )
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = textFieldController.text;
    Navigator.push( context, MaterialPageRoute( builder: (context) => SecondScreen(text: textToSend),));
  }
}

class SecondScreen extends StatelessWidget {
  final String text;
  SecondScreen({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(text),
            ),
            RaisedButton(
              child: Text('Go back to first screen', style: TextStyle(fontSize: 24),),
              onPressed: () {
                _goBackToFirstScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _goBackToFirstScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('Hello world', style: TextStyle(fontSize: 30, color: textColor,),),
      onTap: () {
        _doSomething();
      },
    );
  }

  void _doSomething() {
    setState(() {
      int randomHexColor = Random().nextInt(0xFFFFFF);
      int opaqueColor = 0xFF000000 + randomHexColor;
      textColor = Color(opaqueColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('this is my title'),
      value: _checkedValue,
      onChanged: (newValue) {
        _doSomething(newValue);
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  void _doSomething(bool isChecked) {
    _showAlertDialog();
    setState(() {
      _checkedValue = isChecked;
    });
  }
  void _showAlertDialog() {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Dialog title"),
      content: Text("This is a Flutter AlertDialog."),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

///////////
Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_textString, style: TextStyle(fontSize: 30),),
            TextField(
              onChanged: (text) {
                _doSomething(text);
              },
            ),
      ],
    );
  }

  void _doSomething(String text) {
    setState(() {
      _textString = text;
    });
  }
//////////////////////////////////
        RaisedButton(
          child: Text('Button'),
          onPressed: () {
            _doSomething();
          },
        )
  void _doSomething() {
    setState(() {
      print(_textString);
      _textString = 'Hello Flutter';
    });
  }
        /////////////////////////////////////////
  return Column(
    children: [
      Text('Hello World', style: TextStyle(fontSize: 30)),
      RaisedButton(
        child: Text('Button'),
        onPressed: () {}
      ),
    ],
  );
*/

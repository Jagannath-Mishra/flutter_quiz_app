import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';

/*void main(){
 runApp(MyApp());
}*/

void main() => runApp(MyApp());

//Format flutter Code: CTRL + ALT + L

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStateApp();
  }
}

class _MyStateApp extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    "what's your fav color ?",
    "What's your fab sports ?",
    "What's your first job?"
  ];

  void _answarClicked() {
    setState(() {
      if (_questionIndex < 3) {
        _questionIndex++;
        print("Selected question " + _questionIndex.toString());
      } else {
        print('We are out of questions!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answar-1'),
              onPressed: _answarClicked,
            ),
            RaisedButton(
              child: Text('Answar-2'),
              onPressed: _answarClicked,
            ),
            RaisedButton(
              child: Text('Answar-3'),
              onPressed: _answarClicked,
            ),
          ],
        ),
      ),
    );
  }
}

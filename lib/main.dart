import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/question.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

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
  final _questions = const [
    {
      'questionText': 'what\'s your fav color ?',
      'answers': ['Green', 'Red', 'White', 'Black'],
    },
    {
      'questionText': 'What\'s your fab sports ?',
      'answers': ['Cricket', 'Football', 'Tennis', 'Carrom'],
    },
    {
      'questionText': 'What\'s your first job?',
      'answers': ['TCS', 'Wipro', 'Infosis', 'Legato'],
    },
  ];

  void _answarClicked() {
    setState(() {
      _questionIndex++;
      print("Selected question " + _questionIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answarClicked, _questions, _questionIndex)
            : Result(),
      ),
    );
  }
}

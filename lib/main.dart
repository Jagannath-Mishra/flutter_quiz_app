import 'package:flutter/material.dart';

/*void main(){
 runApp(MyApp());
}*/

void main() => runApp(MyApp());

//Format flutter Code: CTRL + ALT + L
class MyApp extends StatelessWidget {
  var questionIndex = 0;
  var questions = ["what's your fav color ?", "What's your fab sports ?", "What's your first job?"];
  void answarClicked(){
    if(questionIndex < 3){
      questionIndex++;
      print("Selected question " + questionIndex.toString());
    }else {
      print('We are out of questions!');
    }
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
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child:Text('Answar-1'),
              onPressed: answarClicked,
            ),
            RaisedButton(
              child:Text('Answar-2'),
              onPressed: answarClicked,
            ),
            RaisedButton(
              child: Text('Answar-3'),
              onPressed: answarClicked,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/*void main(){
 runApp(MyApp());
}*/

void main() => runApp(MyApp());

//Format flutter Code: CTRL + ALT + L
class MyApp extends StatelessWidget {
  var questions = ["what's your fav color", "What's your fab sports"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text('The Questions!'),
            RaisedButton(
              child:Text('Answar-1'),
              onPressed: null,
            ),
            RaisedButton(
              child:Text('Answar-2'),
              onPressed: null,
            ),
            RaisedButton(
              child:Text('Answar-3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/*void main(){
 runApp(MyApp());
}*/

void main() => runApp(MyApp());

//Format flutter Code: CTRL + ALT + L
class MyApp extends StatelessWidget {
  var questions = ["what's your fav color", "What's your fab sports"];
  void answarClicked(){
    print('answar choosen - 3');
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
            Text('The Questions!'),
            RaisedButton(
              child:Text('Answar-1'),
              onPressed: () => print("Answar 1 chosen!"),
            ),
            RaisedButton(
              child:Text('Answar-2'),
              onPressed: () => {
                print('Answar 2 chosen!')
              },
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

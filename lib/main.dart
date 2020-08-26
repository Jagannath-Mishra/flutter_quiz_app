import 'package:flutter/material.dart';

/*void main(){
 runApp(MyApp());
}*/

void main() => runApp(MyApp());
//Format flutter Code: CTRL + ALT + L
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Text('This is my body'),
      ),
    );
  }
}

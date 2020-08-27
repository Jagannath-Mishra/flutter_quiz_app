import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget{
  final Function handler;
  final List<Map<String,Object>> questions;
  final int questionIndex ;
  Quiz(this.handler,this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(handler, answer);
        }).toList()
      ],
    );
  }
}
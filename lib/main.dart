import 'package:flutter/material.dart';
import 'package:test/answer.dart';
import 'package:test/question.dart';
import 'package:test/quiz.dart';
import 'package:test/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestion = 0;
int result=0;
  var questions = [
    {
      "Question": "what is your favorite couleur?",
      "Answers": [
        {"Answer": "Red", "score": 20},
        {"Answer": "Bleu", "score": 05},
        {"Answer": "white", "score": 15},
        {"Answer": "Black", "score": 20},
      ]
    },
    {
      "Question": "what is your favorite animal?",
      "Answers": [
        {"Answer": "Dog", "score": 20},
        {"Answer": "Cat", "score": 10},
        {"Answer": "Hourse", "score": 5},
      ]
    },
  ];

  void answered(int score) {
    setState(() {
      indexQuestion++;
    });
    //  print("Next Question N-" + indexQuestion.toString();
    result = result + score;
    return;
  }
 void reset(){
   setState(() {
      indexQuestion = 0;
      result = 0;
    });
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: 

            (questions.length > indexQuestion)?
        Quiz(questions,answered,indexQuestion)
           :Result(result, reset)
           

            // Answer(answered,  "this is a new answer"),
            // Answer(answered,  "this is a new answer"),
            // Answer(answered,  "this is a new answer"),
            // Answer(answered,  "this is a new answer"),
          
        )
      );
    
  }
}
  // class Question extends StatelessWidget{
  //   String question;
  //   Question(this.question);
  //   @override 
  //   Widget build(BuildContext context){
  //     return 
  //             Text(questions[indexQuestion],
  //         style:const TextStyle(fontSize: 24),
  //         ),
  //     );
  //   }
  // }
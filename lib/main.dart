import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main(){
 runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget{
  
  State<StatefulWidget> createState(){
    return MyFirstAppState();
  }

}

class MyFirstAppState extends State<MyFirstApp>{
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex +1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context){
    var questions = [
      "Your Favourite color?",
      "Your Favourite fruit?",
      "Your Favourite Cricket Player?"
    ];
    return MaterialApp(home: Scaffold(
      appBar: 
        AppBar(title: Text('My First Cluster App'),),
       body: Column(
         children: [
            Questions(questions[_questionIndex]
           ),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
         ],
       ),
        ),
    );
  }

}
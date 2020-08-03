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
    final questions = [
      {
        "questionText" :  "Your Favourite color?",
        "answers" : ["Blue", "Green", "Black", "Red"]
      },
      {
        "questionText" :  "Your Favourite Fruit?",
        "answers" : ["Banana", "Apple", "Mango", "Lichi"]
      },
      {
        "questionText" :  "Your Favourite Cricket Player?",
        "answers" : ["MS Dhoni", "Sachin", "Dravid", "Ganguly"]
      },
      
    ];
    return MaterialApp(home: Scaffold(
      appBar: 
        AppBar(title: Text('My First Cluster App'),),
       body: _questionIndex < questions.length ? Column(
         children: [
            Questions(questions[_questionIndex]['questionText']
           ),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
             return Answer(_answerQuestion, answer);
           }).toList(),
         ],
       ) : Center(child: 
            Text('Thank You!!'),
          ),
        ),
    );
  }

}
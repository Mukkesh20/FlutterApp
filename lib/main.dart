import 'package:flutter/material.dart';

void main(){
 runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget{
  
  State<StatefulWidget> createState(){
    return MyFirstAppState();
  }

}

class MyFirstAppState extends State<MyFirstApp>{
  var questionIndex = 0;

  onClickFunc(){
    setState(() {
      questionIndex =questionIndex +1;
    });
    print(questionIndex);
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
           Text(questions[questionIndex]),
           RaisedButton(
             child: Text('Green'),
             onPressed: onClickFunc,
             ),
           RaisedButton(
             child: Text('Blue'),
             onPressed: onClickFunc,
             ),
           RaisedButton(
             child: Text('Black'),
             onPressed: onClickFunc,
             )
         ],
       ),
        ),
    );
  }

}
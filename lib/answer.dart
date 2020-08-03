import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
    final Function selectHandler;
    final String answers;

    Answer(this.selectHandler, this.answers);

    @override
    Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
          child :Text(answers),
          onPressed: selectHandler,
        ),
      );
    }
}
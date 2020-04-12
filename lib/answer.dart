import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String text;

  Answer(this.selectHandler, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
        child: Text(text), 
        onPressed: selectHandler,
      ),
    );
  }
}

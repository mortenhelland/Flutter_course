import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultsScore;
  final Function resetHandler;

  Result(this.resultsScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultsScore <= 8) {
      resultText = 'You are awsome and innocent!';
    } else if (resultsScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultsScore <= 16) {
      resultText = 'You are ... Strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuestionAnswerWidget extends StatefulWidget {
  final String question;
  final String answer;

  const QuestionAnswerWidget({Key key, this.question, this.answer})
      : super(key: key);

  @override
  _QuestionAnswerWidgetState createState() => _QuestionAnswerWidgetState();
}

class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
  bool _showAnswer = false;

  void _handleShowAnswer() {
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.help_outline,
              size: 30,
              color: Colors.red[900],
            ),
            title: Text(
              widget.question,
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: FlatButton(
              child: Icon(
                _showAnswer ? Icons.expand_less : Icons.keyboard_arrow_down,
                color: Colors.red[900],
              ),
              onPressed: _handleShowAnswer,
            ),
          ),
          Visibility(
            visible: _showAnswer,
            maintainSize: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 15),
              child: Text(widget.answer),
            ),
          ),
        ],
      ),
    );
  }
}

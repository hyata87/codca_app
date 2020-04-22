import 'package:flutter/material.dart';

class CardEditTextsPage extends StatelessWidget {
  final String name;

  final String message;

  final Function(String name) onChangedName;

  final Function(String message) onChangedMessage;

  CardEditTextsPage({
    this.name,
    this.message,
    this.onChangedName,
    this.onChangedMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Please input text infomation",
            style: TextStyle(fontSize: 16),
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: "name",
              hintText: "Input your name",
            ),
            onChanged: onChangedName,
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.message),
              labelText: "message",
              hintText: "Input your short messages",
            ),
            onChanged: onChangedMessage,
          ),
        ],
      ),
    );
  }
}

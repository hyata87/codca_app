import 'package:flutter/material.dart';

class CardEditTextsScreen extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Card Edit"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: "name",
                  hintText: "Input your name",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.message),
                  labelText: "message",
                  hintText: "Input your short messages",
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("next"),
          icon: Icon(Icons.check),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

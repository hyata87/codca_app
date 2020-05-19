import 'package:flutter/material.dart';

class HomeSignPage extends StatelessWidget {
  final Function() onAppStart;

  final Function() onSignIn;

  HomeSignPage(
    this.onAppStart,
    this.onSignIn,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("App Start"),
            onPressed: onAppStart,
          ),
          FlatButton(
            child: Text("Sign In"),
            onPressed: onSignIn,
          ),
        ],
      ),
    );
  }
}

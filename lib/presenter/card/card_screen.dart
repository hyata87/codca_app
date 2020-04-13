import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CardScreenParameter parameter =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.qrcode),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: Text("QrCode"),
              children: <Widget>[],
            ),
          );
        },
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(parameter.uid),
            expandedHeight: 200,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(4),
                child: Text("Info"),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("name"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.public),
                  title: Text("name"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FaIcon(FontAwesomeIcons.twitter),
                  title: Text("name"),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text("profile"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("hogehoge"),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class CardScreenParameter {
  final String uid;
  CardScreenParameter(this.uid);
}

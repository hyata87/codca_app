import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardEditLinksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Edit"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16, top: 4, bottom: 4),
              child: Text(
                "Please select shared links",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SwitchListTile(
              value: false,
              title: Text("Web Site"),
              secondary: Icon(Icons.home),
              onChanged: (value) {},
            ),
            SwitchListTile(
              value: false,
              title: Text("E-Mail"),
              secondary: Icon(Icons.email),
              onChanged: (value) {},
            ),
            SwitchListTile(
              value: false,
              title: Text("Twitter"),
              secondary: FaIcon(FontAwesomeIcons.twitter),
              onChanged: (value) {},
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
    );
  }
}

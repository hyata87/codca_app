import 'package:codca/domain/card/share_link.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardEditLinkPage extends StatelessWidget {
  final Set<ShareLink> links;

  final Function(ShareLink link, bool value) onChanged;

  CardEditLinkPage({
    this.links,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 4),
            child: Text(
              "Please select shared links",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SwitchListTile(
            secondary: Icon(Icons.account_box),
            title: Text("Profile Page"),
            value: links.contains(ShareLink.profile),
            onChanged: (value) {
              onChanged(ShareLink.profile, value);
            },
          ),
          SwitchListTile(
            secondary: Icon(Icons.home),
            title: Text("Web Site"),
            value: links.contains(ShareLink.webSite),
            onChanged: (value) {
              onChanged(ShareLink.webSite, value);
            },
          ),
          SwitchListTile(
            secondary: Icon(Icons.email),
            title: Text("Email"),
            value: links.contains(ShareLink.email),
            onChanged: (value) {
              onChanged(ShareLink.email, value);
            },
          ),
          SwitchListTile(
            secondary: FaIcon(FontAwesomeIcons.twitter),
            title: Text("Twitter"),
            value: links.contains(ShareLink.twitter),
            onChanged: (value) {
              onChanged(ShareLink.twitter, value);
            },
          ),
        ]);
  }
}

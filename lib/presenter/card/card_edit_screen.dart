import 'package:flutter/material.dart';

class CardEditScreen extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.file_upload),
                            Text("Please select upload image"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: "name",
                  hintText: "Input your name",
                ),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Links"),
                subtitle: Text("Share your links"),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_key.currentState.validate()) {
              // 入力データが正常な場合の処理
              this._key.currentState.save();
            }
          },
          icon: Icon(Icons.check),
          label: Text("save"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

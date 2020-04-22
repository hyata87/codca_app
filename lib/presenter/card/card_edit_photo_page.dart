import 'dart:io';

import 'package:codca/domain/maybe.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CardEditPhotoPage extends StatelessWidget {
  final Maybe<ImageProvider> image;

  final void Function(File file) onChangedImage;

  CardEditPhotoPage({this.image, this.onChangedImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: image
                  .map(
                    (imageProvider) => BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .getOrElse(
                    BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
              child: image
                  .map<Widget>(
                    (_) => Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () async {
                              final image = await ImagePicker.pickImage(
                                  source: ImageSource.gallery);
                              onChangedImage(image);
                            },
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                  .getOrElse(
                    InkWell(
                      onTap: () async {
                        final image = await ImagePicker.pickImage(
                            source: ImageSource.gallery);
                        onChangedImage(image);
                      },
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
            ),
          ),
        ],
      ),
    );
  }
}

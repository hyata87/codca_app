import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/create_card_draft_usecase.dart';
import 'package:codca/domain/card/get_card_draft_usecase.dart';
import 'package:codca/presenter/card/card_draft_model.dart';
import 'package:codca/presenter/card/card_edit_link_page.dart';
import 'package:codca/presenter/card/card_edit_photo_page.dart';
import 'package:codca/presenter/card/card_edit_texts_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardDraftEditScreen extends StatelessWidget {
  final String uid;

  CardDraftEditScreen(this.uid);

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<CardDraftRepository>(context);
    final createUseCase = CreateCardDraftUseCase(repository);
    final getUseCase = GetCardDraftUseCase(repository);
    final PageController pageController = PageController(initialPage: 0);
    return ChangeNotifierProvider(
      create: (_) => CardDraftModel(createUseCase, getUseCase)..fetch(uid),
      child: Consumer<CardDraftModel>(
        builder: (context, model, __) => Scaffold(
          appBar: AppBar(
            title: Text("Card Edit"),
          ),
          body: Stack(
            children: <Widget>[
              PageView(
                controller: pageController,
                children: <Widget>[
                  CardEditPhotoPage(
                    image: model.status.selectedImage,
                    onChangedImage: (file) {
                      model.selectedPhotoFile(file);
                    },
                  ),
                  CardEditTextsPage(
                    name: model.status.name,
                    message: model.status.message,
                    onChangedName: model.onChangedName,
                    onChangedMessage: model.onChangedMessage,
                  ),
                  CardEditLinkPage(
                    links: model.status.shareLinks,
                    onChanged: model.onChangedLinks,
                  ),
                ],
                onPageChanged: (index) {
                  model.onPageChanged(index);
                },
              ),
              Visibility(
                visible: model.status.isShowPrevButton,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: FlatButton(
                      child: Text("Prev"),
                      onPressed: () {
                        pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: model.status.isShowNextButton,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: FlatButton(
                      child: Text("Next"),
                      onPressed: () {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: Visibility(
            visible: model.status.isValid,
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Text("Done"),
              icon: Icon(Icons.done),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}

class CardDraftEditScreenArguments {
  final String uid;

  CardDraftEditScreenArguments(this.uid);
}

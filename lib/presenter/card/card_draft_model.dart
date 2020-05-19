import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/create_card_draft_usecase.dart';
import 'package:codca/domain/card/get_card_draft_usecase.dart';
import 'package:codca/domain/card/share_link.dart';
import 'package:codca/domain/maybe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardDraftModel extends ChangeNotifier {
  CreateCardDraftUseCase createUseCase;

  GetCardDraftUseCase getUseCase;

  CardDraftModel(this.createUseCase, this.getUseCase);

  CardDraftModelState status = CardDraftModelState();

  void fetch(String uid) async {
    final draft = await getUseCase.invoke(uid);
    status = status.copy(draft: draft);
    notifyListeners();
  }

  void selectedPhotoFile(File photoFile) async {
    if (photoFile == null) return;
    status = status.copy(selectedPhoto: photoFile);
    notifyListeners();
  }

  void onPageChanged(int index) async {
    status = status.copy(pageIndex: index);
    notifyListeners();
  }

  void onChangedName(String name) async {
    status = status.copy(
      draft: status.draft.rebuild((b) => b.name = name),
    );
  }

  void onChangedMessage(String message) async {
    status = status.copy(
      draft: status.draft.rebuild((b) => b.message = message),
    );
    notifyListeners();
  }

  void onChangedLinks(ShareLink link, bool value) async {
    if (value) {
      status = status.copy(
        draft: status.draft.rebuild((b) => b.shareLinks =
            SetBuilder(status.draft.shareLinks.toList()..add(link))),
      );
    } else {
      status = status.copy(
        draft: status.draft.rebuild((b) => b.shareLinks =
            SetBuilder(status.draft.shareLinks.toList()..remove(link))),
      );
    }
    notifyListeners();
  }
}

class CardDraftModelState {
  final CardDraft draft;

  final File selectedPhoto;

  final int pageIndex;

  bool get isShowPrevButton => pageIndex != 0;

  bool get isShowNextButton => pageIndex != 2;

  Maybe<ImageProvider> get selectedImage {
    if (selectedPhoto != null) {
      return Maybe.some(FileImage(selectedPhoto));
    }
    if (draft == null || draft.image == null || draft.image.isEmpty) {
      return Maybe.nothing();
    }
    return Maybe.some(NetworkImage(draft.image));
  }

  String get name {
    if (draft == null) return "";
    return draft.name ?? "";
  }

  String get message {
    if (draft == null) return "";
    return draft.message ?? "";
  }

  Set<ShareLink> get shareLinks {
    if (draft == null) return Set.of([]);
    return draft.shareLinks.toSet();
  }

  bool get isValid {
    if (draft == null) return false;
    if (draft.image == null || draft.image.isNotEmpty || selectedPhoto != null)
      return false;

    return true;
  }

  const CardDraftModelState({
    this.draft,
    this.selectedPhoto,
    this.pageIndex = 0,
  });

  CardDraftModelState copy(
          {CardDraft draft, File selectedPhoto, int pageIndex}) =>
      CardDraftModelState(
        draft: draft ?? this.draft,
        selectedPhoto: selectedPhoto ?? this.selectedPhoto,
        pageIndex: pageIndex ?? this.pageIndex,
      );
}

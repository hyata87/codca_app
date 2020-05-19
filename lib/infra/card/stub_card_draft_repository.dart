import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/share_link.dart';

class StubCardDraftRepository implements CardDraftRepository {
  @override
  Future<CardDraft> create(AuthInfo info, File file) async {
    return CardDraft((b) {
      b.shareLinks = SetBuilder([ShareLink.profile]);
      b.createdAt = DateTime.now();
      b.updatedAt = DateTime.now();
    });
  }

  @override
  Future<CardDraft> fetch(AuthInfo info, String uid) {
    // TODO: implement fetch
    return null;
  }

  @override
  Future<List<CardDraft>> find(AuthInfo info) {
    // TODO: implement find
    return null;
  }

  @override
  Future<void> save(AuthInfo info, CardDraft draft) {
    // TODO: implement save
    return null;
  }
}

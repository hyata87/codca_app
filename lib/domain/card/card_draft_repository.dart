import 'dart:io';

import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/card/card_draft.dart';

abstract class CardDraftRepository {
  Future<CardDraft> create(AuthInfo info, File imageFile);
  Future<CardDraft> fetch(AuthInfo info, String uid);
  Future<List<CardDraft>> find(AuthInfo info);
  // 下書き保存
  Future<void> save(AuthInfo info, CardDraft draft);
}

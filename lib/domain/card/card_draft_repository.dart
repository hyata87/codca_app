import 'package:codca/domain/card/card_draft.dart';

abstract class CardDraftRepository {
  Future<CardDraft> create();
  Future<CardDraft> fetch(String uid);
  Future<List<CardDraft>> find();
  // 下書き保存
  Future<void> save(CardDraft draft);
  // 公開
  Future<void> publish(CardDraft draft);
}

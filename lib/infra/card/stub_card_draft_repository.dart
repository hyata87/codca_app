import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/share_link.dart';

class StubCardDraftRepository implements CardDraftRepository {
  @override
  Future<CardDraft> create() async {
    return CardDraft((b) {
      b.shareLinks = Set.of([ShareLink.profile]);
      b.createdAt = DateTime.now();
      b.updatedAt = DateTime.now();
    });
  }

  @override
  Future<CardDraft> fetch(String uid) {
    // TODO: implement fetch
    return null;
  }

  @override
  Future<List<CardDraft>> find() {
    // TODO: implement find
    return null;
  }

  @override
  Future<void> publish(CardDraft draft) {
    // TODO: implement publish
    return null;
  }

  @override
  Future<void> save(CardDraft draft) {
    // TODO: implement save
    return null;
  }
}

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/share_link.dart';

class FirestoreCardDraftRepository implements CardDraftRepository {
  final Firestore instance;

  FirestoreCardDraftRepository(this.instance);

  @override
  Future<CardDraft> create() async {
    CardDraft draft = CardDraft((b) {
      b.shareLinks = SetBuilder([ShareLink.profile]);
      b.createdAt = DateTime.now().toUtc();
      b.updatedAt = DateTime.now().toUtc();
    });

    final reference = await instance
        .collection("users")
        .document("dummyId")
        .collection("drafts")
        .add(draft.toJson());

    return draft.rebuild((b) => b.uid = reference.documentID);
  }

  @override
  Future<CardDraft> fetch(String uid) async {
    final reference = await instance
        .collection("users")
        .document("dummyId")
        .collection("drafts")
        .document(uid)
        .get();

    return CardDraft.fromJson(reference.data)
        .rebuild((b) => b.uid = reference.documentID);
  }

  @override
  Future<List<CardDraft>> find() async {
    final reference = await instance
        .collection("users")
        .document("dummyId")
        .collection("drafts")
        .getDocuments()
        .then((value) => value.documents
            .map((document) => CardDraft.fromJson(document.data)
                .rebuild((b) => b.uid = document.documentID))
            .toList());
    return reference;
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

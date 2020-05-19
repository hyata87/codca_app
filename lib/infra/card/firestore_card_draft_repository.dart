import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/card/share_link.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirestoreCardDraftRepository implements CardDraftRepository {
  final Firestore _firestore;
  final FirebaseStorage _storage;

  FirestoreCardDraftRepository({Firestore firestore, FirebaseStorage storage})
      : this._firestore = firestore,
        this._storage = storage;

  @override
  Future<CardDraft> create(AuthInfo info, File imageFile) async {
    CardDraft draft = CardDraft((b) {
      b.shareLinks = SetBuilder([ShareLink.profile]);
      b.createdAt = DateTime.now().toUtc();
      b.updatedAt = DateTime.now().toUtc();
    });

    final reference =
        _firestore.collection("users").document(info.uid).collection("drafts");

    final document = await reference.add(draft.toJson());

    return draft.rebuild((b) => b.uid = document.documentID);
  }

  @override
  Future<CardDraft> fetch(AuthInfo info, String uid) async {
    final reference = await _firestore
        .collection("users")
        .document(info.uid)
        .collection("drafts")
        .document(uid)
        .get();

    return CardDraft.fromJson(reference.data)
        .rebuild((b) => b.uid = reference.documentID);
  }

  @override
  Future<List<CardDraft>> find(AuthInfo info) async {
    final reference = await _firestore
        .collection("users")
        .document(info.uid)
        .collection("drafts")
        .getDocuments()
        .then((value) => value.documents
            .map((document) => CardDraft.fromJson(document.data)
                .rebuild((b) => b.uid = document.documentID))
            .toList());
    return reference;
  }

  @override
  Future<void> save(AuthInfo info, CardDraft draft) async {
    final document = _firestore
        .collection("users")
        .document(info.uid)
        .collection("drafts")
        .document(draft.uid);

    return document.setData(
      draft.rebuild((b) => b.updatedAt = DateTime.now().toUtc()).toJson(),
    );
  }
}

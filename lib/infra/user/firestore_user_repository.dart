import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/user/user.dart';
import 'package:codca/domain/user/user_repository.dart';

class FirestoreUserRepository implements UserRepository {
  final Firestore _firestore;

  FirestoreUserRepository({Firestore firestore}) : this._firestore = firestore;

  @override
  Future<User> fetch(String uid) {
    return _firestore
        .collection("users")
        .document(uid)
        .get()
        .then((doc) => User.fromJson(doc.data));
  }

  @override
  Future<void> save(AuthInfo info, User user) {
    return _firestore
        .collection("users")
        .document(info.uid)
        .setData(user.toJson());
  }
}

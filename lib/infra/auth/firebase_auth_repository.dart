import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthRepository(this.firebaseAuth);

  @override
  Future<AuthState> fetch() {
    return firebaseAuth.currentUser().then((user) {
      if (user == null) {
        return Unauthenticated();
      }
      return Authenticated(AuthInfo((b) {
        b.uid = user.uid;
        b.isAnonymous = user.isAnonymous;
      }));
    });
  }

  @override
  Future<AuthInfo> getInfo() {
    return firebaseAuth.currentUser().then((user) {
      if (user == null) {
        throw UnauthenticatedException();
      }
      return AuthInfo((b) {
        b.uid = user.uid;
        b.isAnonymous = user.isAnonymous;
      });
    });
  }

  @override
  Future<void> signInAnonymously() {
    return firebaseAuth.signInAnonymously();
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      firebaseAuth.signOut(),
    ]);
  }
}

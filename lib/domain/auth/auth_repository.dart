import 'package:codca/domain/auth/auth_state.dart';

abstract class AuthRepository {
  Future<AuthState> fetch();
  Future<AuthInfo> getInfo();
  Future<void> signInAnonymously();
  Future<void> signOut();
}

import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/user/user.dart';

abstract class UserRepository {
  Future<User> fetch(String uid);
  Future<void> save(AuthInfo info, User user);
}

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'auth_state.g.dart';

abstract class AuthState {
  R fold<R>(
    R onUninitialized(),
    R onAuthenticated(AuthInfo info),
    R onUnauthenticated(),
  );
}

class Uninitialized implements AuthState {
  @override
  R fold<R>(
    R Function() onUninitialized,
    R Function(AuthInfo info) onAuthenticated,
    R Function() onUnauthenticated,
  ) {
    return onUninitialized();
  }
}

class Authenticated implements AuthState {
  final AuthInfo info;

  Authenticated(this.info);

  @override
  R fold<R>(
    R Function() onUninitialized,
    R Function(AuthInfo info) onAuthenticated,
    R Function() onUnauthenticated,
  ) {
    return onAuthenticated(info);
  }
}

class Unauthenticated implements AuthState {
  @override
  R fold<R>(
    R Function() onUninitialized,
    R Function(AuthInfo info) onAuthenticated,
    R Function() onUnauthenticated,
  ) {
    return onUnauthenticated();
  }
}

abstract class AuthInfo implements Built<AuthInfo, AuthInfoBuilder> {
  String get uid;

  bool get isAnonymous;

  AuthInfo._();
  factory AuthInfo([void Function(AuthInfoBuilder) updates]) = _$AuthInfo;
}

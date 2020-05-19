// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthInfo extends AuthInfo {
  @override
  final String uid;
  @override
  final bool isAnonymous;

  factory _$AuthInfo([void Function(AuthInfoBuilder) updates]) =>
      (new AuthInfoBuilder()..update(updates)).build();

  _$AuthInfo._({this.uid, this.isAnonymous}) : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('AuthInfo', 'uid');
    }
    if (isAnonymous == null) {
      throw new BuiltValueNullFieldError('AuthInfo', 'isAnonymous');
    }
  }

  @override
  AuthInfo rebuild(void Function(AuthInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthInfoBuilder toBuilder() => new AuthInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthInfo &&
        uid == other.uid &&
        isAnonymous == other.isAnonymous;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, uid.hashCode), isAnonymous.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthInfo')
          ..add('uid', uid)
          ..add('isAnonymous', isAnonymous))
        .toString();
  }
}

class AuthInfoBuilder implements Builder<AuthInfo, AuthInfoBuilder> {
  _$AuthInfo _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  bool _isAnonymous;
  bool get isAnonymous => _$this._isAnonymous;
  set isAnonymous(bool isAnonymous) => _$this._isAnonymous = isAnonymous;

  AuthInfoBuilder();

  AuthInfoBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _isAnonymous = _$v.isAnonymous;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthInfo;
  }

  @override
  void update(void Function(AuthInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthInfo build() {
    final _$result =
        _$v ?? new _$AuthInfo._(uid: uid, isAnonymous: isAnonymous);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

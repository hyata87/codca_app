// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'drafts',
      serializers.serialize(object.drafts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CardDraft)])),
    ];

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'drafts':
          result.drafts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CardDraft)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final BuiltList<CardDraft> drafts;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.drafts}) : super._() {
    if (drafts == null) {
      throw new BuiltValueNullFieldError('User', 'drafts');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User && drafts == other.drafts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, drafts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')..add('drafts', drafts))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  ListBuilder<CardDraft> _drafts;
  ListBuilder<CardDraft> get drafts =>
      _$this._drafts ??= new ListBuilder<CardDraft>();
  set drafts(ListBuilder<CardDraft> drafts) => _$this._drafts = drafts;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _drafts = _$v.drafts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ?? new _$User._(drafts: drafts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'drafts';
        drafts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

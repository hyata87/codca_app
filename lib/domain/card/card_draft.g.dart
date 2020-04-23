// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_draft.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CardDraft> _$cardDraftSerializer = new _$CardDraftSerializer();

class _$CardDraftSerializer implements StructuredSerializer<CardDraft> {
  @override
  final Iterable<Type> types = const [CardDraft, _$CardDraft];
  @override
  final String wireName = 'CardDraft';

  @override
  Iterable<Object> serialize(Serializers serializers, CardDraft object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'shareLinks',
      serializers.serialize(object.shareLinks,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShareLink)])),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];
    if (object.uid != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(object.uid,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CardDraft deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardDraftBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shareLinks':
          result.shareLinks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShareLink)]))
              as BuiltSet<Object>);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$CardDraft extends CardDraft {
  @override
  final String uid;
  @override
  final String image;
  @override
  final String name;
  @override
  final String message;
  @override
  final BuiltSet<ShareLink> shareLinks;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$CardDraft([void Function(CardDraftBuilder) updates]) =>
      (new CardDraftBuilder()..update(updates)).build();

  _$CardDraft._(
      {this.uid,
      this.image,
      this.name,
      this.message,
      this.shareLinks,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (shareLinks == null) {
      throw new BuiltValueNullFieldError('CardDraft', 'shareLinks');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('CardDraft', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('CardDraft', 'updatedAt');
    }
  }

  @override
  CardDraft rebuild(void Function(CardDraftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardDraftBuilder toBuilder() => new CardDraftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CardDraft &&
        uid == other.uid &&
        image == other.image &&
        name == other.name &&
        message == other.message &&
        shareLinks == other.shareLinks &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uid.hashCode), image.hashCode),
                        name.hashCode),
                    message.hashCode),
                shareLinks.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CardDraft')
          ..add('uid', uid)
          ..add('image', image)
          ..add('name', name)
          ..add('message', message)
          ..add('shareLinks', shareLinks)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CardDraftBuilder implements Builder<CardDraft, CardDraftBuilder> {
  _$CardDraft _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SetBuilder<ShareLink> _shareLinks;
  SetBuilder<ShareLink> get shareLinks =>
      _$this._shareLinks ??= new SetBuilder<ShareLink>();
  set shareLinks(SetBuilder<ShareLink> shareLinks) =>
      _$this._shareLinks = shareLinks;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  CardDraftBuilder();

  CardDraftBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _image = _$v.image;
      _name = _$v.name;
      _message = _$v.message;
      _shareLinks = _$v.shareLinks?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CardDraft other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CardDraft;
  }

  @override
  void update(void Function(CardDraftBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CardDraft build() {
    _$CardDraft _$result;
    try {
      _$result = _$v ??
          new _$CardDraft._(
              uid: uid,
              image: image,
              name: name,
              message: message,
              shareLinks: shareLinks.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'shareLinks';
        shareLinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CardDraft', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

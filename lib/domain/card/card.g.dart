// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Card> _$cardSerializer = new _$CardSerializer();

class _$CardSerializer implements StructuredSerializer<Card> {
  @override
  final Iterable<Type> types = const [Card, _$Card];
  @override
  final String wireName = 'Card';

  @override
  Iterable<Object> serialize(Serializers serializers, Card object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'linkList',
      serializers.serialize(object.linkList,
          specifiedType: const FullType(List, const [const FullType(Link)])),
      'createAt',
      serializers.serialize(object.createAt,
          specifiedType: const FullType(DateTime)),
    ];
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
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Card deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'linkList':
          result.linkList = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(Link)]))
              as List<Link>;
          break;
        case 'createAt':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Card extends Card {
  @override
  final String uid;
  @override
  final String image;
  @override
  final String name;
  @override
  final String text;
  @override
  final List<Link> linkList;
  @override
  final DateTime createAt;

  factory _$Card([void Function(CardBuilder) updates]) =>
      (new CardBuilder()..update(updates)).build();

  _$Card._(
      {this.uid,
      this.image,
      this.name,
      this.text,
      this.linkList,
      this.createAt})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('Card', 'uid');
    }
    if (linkList == null) {
      throw new BuiltValueNullFieldError('Card', 'linkList');
    }
    if (createAt == null) {
      throw new BuiltValueNullFieldError('Card', 'createAt');
    }
  }

  @override
  Card rebuild(void Function(CardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardBuilder toBuilder() => new CardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Card &&
        uid == other.uid &&
        image == other.image &&
        name == other.name &&
        text == other.text &&
        linkList == other.linkList &&
        createAt == other.createAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, uid.hashCode), image.hashCode), name.hashCode),
                text.hashCode),
            linkList.hashCode),
        createAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Card')
          ..add('uid', uid)
          ..add('image', image)
          ..add('name', name)
          ..add('text', text)
          ..add('linkList', linkList)
          ..add('createAt', createAt))
        .toString();
  }
}

class CardBuilder implements Builder<Card, CardBuilder> {
  _$Card _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  List<Link> _linkList;
  List<Link> get linkList => _$this._linkList;
  set linkList(List<Link> linkList) => _$this._linkList = linkList;

  DateTime _createAt;
  DateTime get createAt => _$this._createAt;
  set createAt(DateTime createAt) => _$this._createAt = createAt;

  CardBuilder();

  CardBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _image = _$v.image;
      _name = _$v.name;
      _text = _$v.text;
      _linkList = _$v.linkList;
      _createAt = _$v.createAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Card other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Card;
  }

  @override
  void update(void Function(CardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Card build() {
    final _$result = _$v ??
        new _$Card._(
            uid: uid,
            image: image,
            name: name,
            text: text,
            linkList: linkList,
            createAt: createAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

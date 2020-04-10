// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WebLink> _$webLinkSerializer = new _$WebLinkSerializer();
Serializer<TwitterLink> _$twitterLinkSerializer = new _$TwitterLinkSerializer();

class _$WebLinkSerializer implements StructuredSerializer<WebLink> {
  @override
  final Iterable<Type> types = const [WebLink, _$WebLink];
  @override
  final String wireName = 'WebLink';

  @override
  Iterable<Object> serialize(Serializers serializers, WebLink object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  WebLink deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WebLinkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TwitterLinkSerializer implements StructuredSerializer<TwitterLink> {
  @override
  final Iterable<Type> types = const [TwitterLink, _$TwitterLink];
  @override
  final String wireName = 'TwitterLink';

  @override
  Iterable<Object> serialize(Serializers serializers, TwitterLink object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TwitterLink deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TwitterLinkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WebLink extends WebLink {
  @override
  final String url;
  @override
  final String name;

  factory _$WebLink([void Function(WebLinkBuilder) updates]) =>
      (new WebLinkBuilder()..update(updates)).build();

  _$WebLink._({this.url, this.name}) : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('WebLink', 'url');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('WebLink', 'name');
    }
  }

  @override
  WebLink rebuild(void Function(WebLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebLinkBuilder toBuilder() => new WebLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebLink && url == other.url && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WebLink')
          ..add('url', url)
          ..add('name', name))
        .toString();
  }
}

class WebLinkBuilder implements Builder<WebLink, WebLinkBuilder> {
  _$WebLink _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  WebLinkBuilder();

  WebLinkBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebLink other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WebLink;
  }

  @override
  void update(void Function(WebLinkBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WebLink build() {
    final _$result = _$v ?? new _$WebLink._(url: url, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$TwitterLink extends TwitterLink {
  @override
  final String url;
  @override
  final String name;

  factory _$TwitterLink([void Function(TwitterLinkBuilder) updates]) =>
      (new TwitterLinkBuilder()..update(updates)).build();

  _$TwitterLink._({this.url, this.name}) : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('TwitterLink', 'url');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('TwitterLink', 'name');
    }
  }

  @override
  TwitterLink rebuild(void Function(TwitterLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TwitterLinkBuilder toBuilder() => new TwitterLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TwitterLink && url == other.url && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TwitterLink')
          ..add('url', url)
          ..add('name', name))
        .toString();
  }
}

class TwitterLinkBuilder implements Builder<TwitterLink, TwitterLinkBuilder> {
  _$TwitterLink _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TwitterLinkBuilder();

  TwitterLinkBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TwitterLink other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TwitterLink;
  }

  @override
  void update(void Function(TwitterLinkBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TwitterLink build() {
    final _$result = _$v ?? new _$TwitterLink._(url: url, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:codca/domain/serializers.dart';

part 'link.g.dart';

abstract class Link {
  String get url;
  String get name;
}

abstract class WebLink with Link implements Built<WebLink, WebLinkBuilder> {
  WebLink._();
  factory WebLink([void Function(WebLinkBuilder) updates]) = _$WebLink;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(WebLink.serializer, this);
  }

  static WebLink fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(WebLink.serializer, json);
  }

  static Serializer<WebLink> get serializer => _$webLinkSerializer;
}

abstract class TwitterLink
    with Link
    implements Built<TwitterLink, TwitterLinkBuilder> {
  TwitterLink._();
  factory TwitterLink([void Function(TwitterLinkBuilder) updates]) =
      _$TwitterLink;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TwitterLink.serializer, this);
  }

  static TwitterLink fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TwitterLink.serializer, json);
  }

  static Serializer<TwitterLink> get serializer => _$twitterLinkSerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:codca/domain/card/link.dart';
import 'package:codca/domain/serializers.dart';

part 'card.g.dart';

abstract class Card implements Built<Card, CardBuilder> {
  String get uid;

  @nullable
  String get image;

  @nullable
  String get name;

  @nullable
  String get text;

  List<Link> get linkList;

  DateTime get createAt;

  Card._();
  factory Card([void Function(CardBuilder) updates]) = _$Card;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Card.serializer, this);
  }

  static Card fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Card.serializer, json);
  }

  static Serializer<Card> get serializer => _$cardSerializer;
}

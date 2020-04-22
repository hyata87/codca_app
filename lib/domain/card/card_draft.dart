import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:codca/domain/card/share_link.dart';
import 'package:codca/domain/serializers.dart';

part 'card_draft.g.dart';

abstract class CardDraft implements Built<CardDraft, CardDraftBuilder> {
  @nullable
  String get uid;

  @nullable
  String get image;

  @nullable
  String get name;

  @nullable
  String get message;

  Set<ShareLink> get shareLinks;

  DateTime get createdAt;

  DateTime get updatedAt;

  CardDraft._();
  factory CardDraft([void Function(CardDraftBuilder) updates]) = _$CardDraft;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CardDraft.serializer, this);
  }

  static CardDraft fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CardDraft.serializer, json);
  }

  static Serializer<CardDraft> get serializer => _$cardDraftSerializer;
}

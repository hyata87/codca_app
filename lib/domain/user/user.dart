import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  BuiltList<CardDraft> get drafts;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(User.serializer, this);
  }

  static User fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;
}

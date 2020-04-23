import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:codca/domain/card/card.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/share_link.dart';

part 'serializers.g.dart';

@SerializersFor([Card, CardDraft, ShareLink])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

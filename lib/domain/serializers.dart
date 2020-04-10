import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:codca/domain/card/card.dart';
import 'package:codca/domain/card/link.dart';

part 'serializers.g.dart';

@SerializersFor([Card])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

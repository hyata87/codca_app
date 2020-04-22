import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'share_link.g.dart';

class ShareLink extends EnumClass {
  static const ShareLink profile = _$profile;
  static const ShareLink email = _$email;
  static const ShareLink webSite = _$webSite;
  static const ShareLink twitter = _$twitter;

  const ShareLink._(String name) : super(name);

  static BuiltSet<ShareLink> get values => _$shareLinkValues;
  static ShareLink valueOf(String name) => _$shareLinkValueOf(name);
}

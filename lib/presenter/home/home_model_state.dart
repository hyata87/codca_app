import 'package:built_value/built_value.dart';
import 'package:codca/domain/card/card_draft.dart';

part 'home_model_state.g.dart';

abstract class HomeModelState
    implements Built<HomeModelState, HomeModelStateBuilder> {
  List<CardDraft> get drafts;

  HomeModelState._();
  factory HomeModelState([void Function(HomeModelStateBuilder) updates]) =
      _$HomeModelState;
}

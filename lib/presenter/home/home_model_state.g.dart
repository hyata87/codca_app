// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeModelState extends HomeModelState {
  @override
  final List<CardDraft> drafts;

  factory _$HomeModelState([void Function(HomeModelStateBuilder) updates]) =>
      (new HomeModelStateBuilder()..update(updates)).build();

  _$HomeModelState._({this.drafts}) : super._() {
    if (drafts == null) {
      throw new BuiltValueNullFieldError('HomeModelState', 'drafts');
    }
  }

  @override
  HomeModelState rebuild(void Function(HomeModelStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeModelStateBuilder toBuilder() =>
      new HomeModelStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeModelState && drafts == other.drafts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, drafts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeModelState')
          ..add('drafts', drafts))
        .toString();
  }
}

class HomeModelStateBuilder
    implements Builder<HomeModelState, HomeModelStateBuilder> {
  _$HomeModelState _$v;

  List<CardDraft> _drafts;
  List<CardDraft> get drafts => _$this._drafts;
  set drafts(List<CardDraft> drafts) => _$this._drafts = drafts;

  HomeModelStateBuilder();

  HomeModelStateBuilder get _$this {
    if (_$v != null) {
      _drafts = _$v.drafts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeModelState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeModelState;
  }

  @override
  void update(void Function(HomeModelStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeModelState build() {
    final _$result = _$v ?? new _$HomeModelState._(drafts: drafts);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/usecase.dart';

class GetCardDraftUseCase implements UseCase<CardDraft, String> {
  final CardDraftRepository _repository;

  GetCardDraftUseCase(this._repository);

  @override
  Future<CardDraft> invoke(String param) {
    return _repository.fetch(param);
  }
}

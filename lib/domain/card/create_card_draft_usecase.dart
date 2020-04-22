import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/usecase.dart';

class CreateCardDraftUseCase implements UseCase<CardDraft, void> {
  final CardDraftRepository _repository;

  CreateCardDraftUseCase(this._repository);

  @override
  Future<CardDraft> invoke(void param) {
    return _repository.create();
  }
}

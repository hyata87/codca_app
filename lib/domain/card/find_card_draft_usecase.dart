import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/usecase.dart';

class FindCardDraftUseCase implements UseCase<List<CardDraft>, int> {
  final CardDraftRepository _repository;

  FindCardDraftUseCase(this._repository);

  @override
  Future<List<CardDraft>> invoke(int param) {
    return _repository.find();
  }
}

import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/usecase.dart';

class FindCardDraftUseCase implements UseCase<List<CardDraft>, int> {
  final CardDraftRepository _draftRepository;
  final AuthRepository _authRepository;

  FindCardDraftUseCase({
    AuthRepository authRepository,
    CardDraftRepository draftRepository,
  })  : this._draftRepository = draftRepository,
        this._authRepository = authRepository;

  @override
  Future<List<CardDraft>> invoke(int param) async {
    final info = await _authRepository.getInfo();
    return _draftRepository.find(info);
  }
}

import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/usecase.dart';

class GetCardDraftUseCase implements UseCase<CardDraft, String> {
  final AuthRepository _authRepository;

  final CardDraftRepository _draftRepository;

  GetCardDraftUseCase(this._authRepository, this._draftRepository);

  @override
  Future<CardDraft> invoke(String param) async {
    final info = await _authRepository.getInfo();
    return _draftRepository.fetch(info, param);
  }
}

import 'dart:io';

import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/card/card_draft.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/domain/usecase.dart';

class CreateCardDraftUseCase implements UseCase<CardDraft, File> {
  final CardDraftRepository _draftRepository;
  final AuthRepository _authRepository;

  CreateCardDraftUseCase(
    AuthRepository authRepository,
    CardDraftRepository draftRepository,
  )   : this._draftRepository = draftRepository,
        this._authRepository = authRepository;

  @override
  Future<CardDraft> invoke(File file) async {
    final info = await _authRepository.getInfo();
    return _draftRepository.create(info, file);
  }
}

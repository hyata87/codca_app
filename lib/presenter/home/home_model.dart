import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/auth/auth_state.dart';
import 'package:codca/domain/card/card_draft_repository.dart';
import 'package:codca/presenter/home/home_model_state.dart';
import 'package:flutter/widgets.dart';

class HomeModel extends ChangeNotifier {
  final CardDraftRepository _draftRepository;
  final AuthRepository _authRepository;

  HomeModel({
    CardDraftRepository draftRepository,
    AuthRepository authRepository,
  })  : this._draftRepository = draftRepository,
        this._authRepository = authRepository;

  HomeModelState status = HomeModelState((b) {
    b.authState = Uninitialized();
    b.drafts = [];
  });

  void fetch() async {
    final authState = await _authRepository.fetch();
    status = status.rebuild((b) => b.authState = authState);
    notifyListeners();
  }

  void signInAnonymously() async {
    await _authRepository.signInAnonymously();
    final authState = await _authRepository.fetch();
    status = status.rebuild((b) => b.authState = authState);
    notifyListeners();
  }

  void signOut() async {
    await _authRepository.signOut();
    final authState = await _authRepository.fetch();
    status = status.rebuild((b) => b.authState = authState);
    notifyListeners();
  }
}

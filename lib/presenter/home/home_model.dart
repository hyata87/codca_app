import 'package:codca/domain/card/find_card_draft_usecase.dart';
import 'package:codca/presenter/home/home_model_state.dart';
import 'package:flutter/widgets.dart';

class HomeModel extends ChangeNotifier {
  final FindCardDraftUseCase _findCardDraftUseCase;

  HomeModel(this._findCardDraftUseCase);

  HomeModelState status = HomeModelState((b) => b.drafts = []);

  void fetch() async {
    final items = await _findCardDraftUseCase.invoke(3);
    status = status.rebuild((b) => b.drafts = items);
    notifyListeners();
  }
}

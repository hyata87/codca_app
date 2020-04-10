import 'package:codca/domain/card/card.dart';
import 'package:codca/domain/card/card_repository.dart';
import 'package:codca/domain/usecase.dart';

class GetCardUseCase implements UseCase<Card, String> {
  final CardRepository _repository;

  GetCardUseCase(this._repository);

  @override
  Future<Card> invoke(String param) {
    return _repository.fetch(param);
  }
}

import 'package:codca/domain/card/card.dart';

abstract class CardRepository {
  Future<Card> fetch(String uid);
  Future<List<Card>> search();
  Future<void> save(Card card);
}

import 'package:codca/domain/card/card.dart';
import 'package:codca/domain/card/card_repository.dart';
import 'package:codca/domain/card/get_card_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRepository extends Mock implements CardRepository {}

void main() {
  group("GetCardUseCase", () {
    CardRepository repository = MockRepository();

    final dummyCard = Card((b) {
      b.uid = "dummy";
      b.linkList = [];
      b.createAt = DateTime(2020, 4, 14);
    });

    test("invoke", () async {
      GetCardUseCase useCase = GetCardUseCase(repository);
      when(repository.fetch("dummy"))
          .thenAnswer((_) => Future.value(dummyCard));

      await useCase.invoke("dummy");
      verify(repository.fetch("dummy"));
    });
  });
}

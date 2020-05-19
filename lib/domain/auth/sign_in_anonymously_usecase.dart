import 'package:codca/domain/auth/auth_repository.dart';
import 'package:codca/domain/usecase.dart';

class SignInAnonymouslyUseCase implements UseCase<void, void> {
  final AuthRepository _repository;

  SignInAnonymouslyUseCase(this._repository);

  @override
  Future<void> invoke(void param) {
    return _repository.signInAnonymously();
  }
}

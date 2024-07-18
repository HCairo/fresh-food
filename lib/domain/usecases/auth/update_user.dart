import 'package:freshfood/domain/repository/auth_repository.dart';
import 'package:freshfood/domain/entities/auth.dart';

class UpdateUserUseCase {
  final AuthRepository _repository;

  UpdateUserUseCase(this._repository);

  Future<void> execute(Auth user) async {
    await _repository.updateUser(user);
  }
}

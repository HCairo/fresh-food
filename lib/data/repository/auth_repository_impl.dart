import 'package:freshfood/presentation/providers/auth_provider.dart';
import 'package:freshfood/data/data_src/local/auth_local_data_src.dart';
import 'package:freshfood/data/data_src/remote/auth_remote_data_src.dart';
import 'package:freshfood/domain/entities/auth.dart';
import 'package:freshfood/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthProvider _provider;
  final AuthLocalDataSrc _localDataSrc;
  final AuthRemoteDataSrc _remoteDataSrc;

  AuthRepositoryImpl(this._provider, this._localDataSrc, this._remoteDataSrc);

  @override
  Future<void> login(String email, String password) async {
    await _provider.login(email, password);
    // Enregistrer les données d'authentification localement si nécessaire
  }

  @override
  Future<void> register(String email, String password) async {
    await _provider.register(email, password);
    // Enregistrer les données d'authentification localement si nécessaire
  }

  @override
  Future<void> updateUser(Auth user) async {
    // Implémenter la logique de mise à jour de l'utilisateur
    // Peut être nécessaire de l'implémenter dans les sources de données locales et/ou distantes
  }
}

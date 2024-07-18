import 'package:freshfood/data/data_src/remote/auth_remote_data_src.dart';

class AuthProvider {
  final AuthRemoteDataSrc _remoteDataSrc;

  AuthProvider(this._remoteDataSrc);

  Future<void> login(String email, String password) async {
    // Implémentation de la méthode de connexion ici, en utilisant _remoteDataSrc
    await _remoteDataSrc.login(email, password);
  }

  Future<void> register(String email, String password) async {
    // Implémentation de la méthode d'enregistrement ici, en utilisant _remoteDataSrc
    await _remoteDataSrc.register(email, password);
  }
}

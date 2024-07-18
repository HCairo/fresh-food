// lib/presentation/controllers/auth_controller.dart

import 'package:get/get.dart';

class AuthController extends GetxController {
  // Variables d'état pour l'e-mail, le mot de passe et l'état d'authentification
  var email = ''.obs; // Utilisation de Rx pour observer les changements
  var password = ''.obs;
  var isLoading = false
      .obs; // Pour indiquer si une opération d'authentification est en cours
  var isAuthenticated =
      false.obs; // Pour indiquer si l'utilisateur est authentifié

  // Méthode pour effectuer la connexion
  void login() async {
    try {
      isLoading(true); // Indiquer que le chargement est en cours

      // Ici, vous pouvez ajouter la logique pour appeler votre service d'authentification
      // Remplacez ce bloc par votre propre logique d'authentification
      await Future.delayed(
          const Duration(seconds: 2)); // Simulation d'une requête asynchrone

      // Simulation d'une authentification réussie
      isAuthenticated(true);
      isLoading(false);

      // Exemple de navigation après l'authentification réussie
      Get.offAllNamed(
          '/home'); // Naviguer vers la page d'accueil après la connexion
    } catch (e) {
      isLoading(false);
      // ignore: avoid_print
      print('Erreur lors de la connexion : $e');
      // Gérer les erreurs d'authentification ici
    }
  }

  // Méthode pour effectuer la déconnexion
  void logout() {
    // Implémenter ici la logique pour la déconnexion
    isAuthenticated(false);
    // Exemple de navigation après la déconnexion
    Get.offAllNamed(
        '/login'); // Naviguer vers l'écran de connexion après la déconnexion
  }

  @override
  void onClose() {
    // Nettoyer les ressources, si nécessaire
    super.onClose();
  }
}

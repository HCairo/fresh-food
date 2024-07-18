import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:freshfood/presentation/controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  final AuthController _authController = Get.find();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => TextField(
                    onChanged: (value) => _authController.email.value = value,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  )),
              const SizedBox(height: 20),
              Obx(() => TextField(
                    onChanged: (value) =>
                        _authController.password.value = value,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Mot de passe',
                    ),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _authController.login(); // Appeler la méthode de connexion
                },
                child: const Text('Connexion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

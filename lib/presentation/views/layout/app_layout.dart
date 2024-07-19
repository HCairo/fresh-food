import 'package:flutter/material.dart';
import 'package:freshfood/presentation/views/home/home_page.dart';
import 'package:freshfood/presentation/views/meals/meals_page.dart';
import 'package:freshfood/presentation/views/orders/orders_page.dart';
import 'package:freshfood/presentation/views/profile/profile_page.dart';
import 'package:freshfood/presentation/views/settings/settings_page.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _navIndex = 0; // Index de navigation actuel

  final Map<int, Widget> _bodyViews = {
    0: HomePage(),
    1: MealsPage(),
    2: OrdersPage(),
    3: ProfilePage(),
    4: SettingsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // No app bar defined
      body:
          getBodyViewByIndex(), // Displays dynamic body content based on _navIndex
      bottomNavigationBar: BottomNavigationBar(
        onTap:
            navigationTap, // Function called when an item is tapped in the bottom navigation bar
        currentIndex:
            _navIndex, // Currently selected index in the navigation bar
        items: const [
          BottomNavigationBarItem(
            label: 'Home', // Text displayed for the 'Home' navigation item
            icon: Icon(Icons.home), // Icon associated with 'Home'
          ),
          BottomNavigationBarItem(
            label: 'Meals', // Text displayed for the 'Meals' navigation item
            icon: Icon(Icons.restaurant), // Icon associated with 'Meals'
          ),
          BottomNavigationBarItem(
            label: 'Orders', // Text displayed for the 'Orders' navigation item
            icon: Icon(Icons.delivery_dining), // Icon associated with 'Orders'
          ),
          BottomNavigationBarItem(
            label:
                'Profile', // Text displayed for the 'Profile' navigation item
            icon: Icon(
                Icons.supervised_user_circle), // Icon associated with 'Profile'
          ),
        ],
      ),
    );
  }

  // Méthode pour récupérer la vue de corps en fonction de _navIndex
  Widget getBodyViewByIndex() {
    return _bodyViews[_navIndex] ??
        Container(
          // Retourne le widget correspondant à _navIndex, sinon un conteneur rouge avec un message d'erreur
          color: Colors.red,
          child: const Center(
            child: Text('Error'), // Affiche 'Error' si _navIndex est invalide
          ),
        );
  }

  // Fonction appelée lorsqu'un élément de la barre de navigation est tapé
  void navigationTap(int value) {
    setState(() {
      _navIndex =
          value; // Met à jour _navIndex avec la nouvelle valeur sélectionnée
    });
  }
}

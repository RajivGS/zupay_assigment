import 'package:flutter/material.dart';

import '../screen/screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("Error"),
              ),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}

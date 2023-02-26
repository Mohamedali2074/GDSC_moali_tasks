import 'package:flutter/material.dart';
import 'package:task2_register_page/views/widgets/login_page.dart';
import 'package:task2_register_page/views/widgets/map_page.dart';
import 'package:task2_register_page/views/widgets/register_page.dart';

class Routes {
  static const String loginPageRoute = '/';
  static const String registerPageRoute = '/register';
  static const String mapPageRoute = '/map';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginPageRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
    switch (settings.name) {
      case Routes.registerPageRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        
    }
    switch (settings.name) {
      case Routes.mapPageRoute:
        return MaterialPageRoute(builder: (_) => const MapPage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Data Found'),
              ),
              body: const Text('No Data Found'),
            ));
  }
}

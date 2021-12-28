import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/models/models.dart';
import 'package:project/screens/screens.dart';
import 'package:project/screens/users_screen/users_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case DiscoverScreen.routeName:
        return DiscoverScreen.route();
      case UsersScreen.routeName:
        return UsersScreen.route(user: settings.arguments as User);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }
}

import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  static const String routeName = '/discover';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => DiscoverScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Home Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

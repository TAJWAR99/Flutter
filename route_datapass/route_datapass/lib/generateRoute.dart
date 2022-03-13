import 'package:flutter/material.dart';
import 'package:route_datapass/Screens/DetailPage.dart';
import 'package:route_datapass/Screens/MyHomePage.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MyHomePage(title: "First page"),
        );

      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => DetailPage(name: args),
          );
        }
        return MaterialPageRoute(builder: (_) => ErrorPage());

      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Error"),
        ],
      ),
    );
  }
}

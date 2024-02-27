import 'package:basic_class_11_routing_prof/main.dart';
import 'package:basic_class_11_routing_prof/route_names.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homePage:
        {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }
      case RouteNames.secondScreen:
        {
          return MaterialPageRoute(
              builder: (context) => SecondScreen(
                    data: settings.arguments as Map,
                  ));
        }
      case RouteNames.thirdScreen:
        {
          return MaterialPageRoute(
              builder: (context) => ThirdScreen(
                    data: settings.arguments as Map,
                  ));
        }
      default:
        {
          return MaterialPageRoute(builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('no route'),
              ),
            );
          });
        }
    }
  }
}

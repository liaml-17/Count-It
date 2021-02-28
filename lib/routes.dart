import 'package:count_it/pages/home.dart';
import 'package:count_it/util/log_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static final LogUtil log = LogUtil();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    log.debug("Routing to ${settings.name} with args $args");

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}

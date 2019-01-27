import 'package:flutter/material.dart';

import 'home.dart';
import 'sensor.dart';
import 'product.dart';
import 'compost.dart';

class FarmerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symbio Creation Farmer',
      home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home' : (context) => HomePage(),
        '/sensor' : (context) => SensorPage(),
        '/product' : (context) => ProductPage(),
        '/compost' : (context) => CompostPage(),
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/home') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => HomePage(),
      fullscreenDialog: true,
    );
  }

}
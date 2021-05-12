import 'package:flutter/material.dart';
import 'package:flutter_dinamic_button_grid/src/pages/home_page.dart';
import 'package:flutter_dinamic_button_grid/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinamic Flutter Grid',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada: ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}

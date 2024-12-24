import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'screens/main_menu.dart';
import 'screens/orders_screen.dart';
import 'screens/services_screen.dart';
import 'screens/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Заказы фирмы разработки ПО',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthScreen(),
        '/main_menu': (context) => MainMenu(),
        '/orders': (context) => OrdersScreen(),
        '/services': (context) => ServicesScreen(),
      },
    );
  }
}

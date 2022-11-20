import 'package:cr_components/models/menu_options.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    // TODO: borrar home
    MenuOptions(
        route: 'home',
        name: 'Home Screen',
        icon: Icons.home_filled,
        screen: const HomeScreen()),
    MenuOptions(
        route: 'ListView1',
        name: 'List View 1',
        icon: Icons.list,
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'ListView2',
        name: 'List View 2',
        icon: Icons.list,
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'alert',
        name: 'Alerts',
        icon: Icons.add_alert,
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        name: 'Card',
        icon: Icons.credit_card,
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'ListView1': (BuildContext context) => const Listview1Screen(),
    'ListView2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

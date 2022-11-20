import 'package:flutter/material.dart' show IconData;
import 'package:flutter/widgets.dart';

class MenuOptions {
  final String route;
  final String name;
  final IconData icon;
  final Widget screen;

  MenuOptions(
      {required this.route,
      required this.name,
      required this.icon,
      required this.screen});
}

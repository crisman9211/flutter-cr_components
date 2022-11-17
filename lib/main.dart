import 'package:cr_components/screens/listview1.screen.dart';
import 'package:flutter/material.dart';

import 'package:cr_components/screens/listview2.screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Listview2Screen());
  }
}

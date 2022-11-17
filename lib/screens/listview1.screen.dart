import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'Roger Feder',
    'Nadal',
    'Murray',
    'Deltoro',
    'Serena W.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(children: [
          ...options
              .map((option) => ListTile(
                    leading: const Icon(Icons.sports_tennis_outlined),
                    title: Text(option),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList()
        ]));
  }
}

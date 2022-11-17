import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.sports_tennis),
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}

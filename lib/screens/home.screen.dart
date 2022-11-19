import 'package:cr_components/screens/listview1.screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.read_more_outlined),
            title: const Text('Route name'),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const Listview1Screen(),
              // );
              // Navigator.push(context, route);
              // // sirve para eleminiar el atras ruta antrior (no volver a login)
              // // Navigator.pushReplacement(context, route);
              Navigator.pushNamed(context, 'card');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10,
        ));
  }
}

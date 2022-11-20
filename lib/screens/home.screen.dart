import 'package:cr_components/router/app.routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Components Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(menuOptions[index].icon, color: Colors.indigo),
            title: Text(menuOptions[index].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const Listview1Screen(),
              // );
              // Navigator.push(context, route);
              // // sirve para eleminiar el atras ruta antrior (no volver a login)
              // // Navigator.pushReplacement(context, route);
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}

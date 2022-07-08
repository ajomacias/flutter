import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea1profe/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = AppRoutes.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mome Screen'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(routes[index].icon),
              title: Text(routes[index].name),
              onTap: () {
                Navigator.pushNamed(context, routes[index].route);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: routes.length),
    );
  }
}

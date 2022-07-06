import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea_clase1/tarea_clase1.dart';

void main() {
  runApp(const MyApp());
}

// Stateless y Stateful
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'listUsers': (context) => ListUserScreen(),
        'user': (context) => const UserScreen()
      },
      initialRoute: 'listUsers',
    );
  }
}

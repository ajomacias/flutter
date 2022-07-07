import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea1profe/routes/routes.dart';

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
      routes: AppRoutes.getRoutes(),
      initialRoute: AppRoutes.initialRoute,
    );
  }
}

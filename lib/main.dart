import 'package:flutter/material.dart';
import 'package:practice_flutter/providers/user_provider.dart';
import 'package:practice_flutter/tarea1profe/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

// Stateless y Stateful
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desarrollo de Aplicaciones Móviles',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/home.dart';

void main() {
  runApp(const MyApp());
}

// Stateless y Stateful
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

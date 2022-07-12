import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );

  static const InputBorder inPutBorder = OutlineInputBorder();
  static const Icon icon = Icon(Icons.send);
}

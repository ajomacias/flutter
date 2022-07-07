import 'dart:js';

import 'package:practice_flutter/tarea1profe/models/menu_option.dart';
import 'package:flutter/material.dart' show Icons, Widget, BuildContext;
import 'package:practice_flutter/tarea1profe/tarea1profe.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        icon: Icons.home,
        name: 'Home Screen',
        route: 'home',
        screen: const HomeScreen()),
    MenuOption(
        icon: Icons.home,
        name: 'UserForm',
        route: 'user_form',
        screen: const UserFormScreen()),
    MenuOption(
        icon: Icons.home,
        name: 'User list',
        route: 'user_list',
        screen: UserListScreen()),
  ];

  static Map<String, Widget Function(BuildContext contex)> getRoutes() {
    Map<String, Widget Function(BuildContext contex)> routes = {};

    for (MenuOption route in menuOption) {
      routes.addAll({route.route: (BuildContext context) => route.screen});
    }
    return routes;
  }
}
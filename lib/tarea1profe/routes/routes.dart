import 'package:flutter/material.dart' show Icons, Widget, BuildContext;
import 'package:practice_flutter/data/users.dart';
import 'package:practice_flutter/tarea1profe/models/menu_option.dart';
import 'package:practice_flutter/tarea1profe/screens/screens.dart';

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
        screen: UserForm()),
    MenuOption(
        icon: Icons.home,
        name: 'User list',
        route: 'user_list',
        screen: const UserListScreen()),
    MenuOption(
        icon: Icons.home,
        name: 'User Cards',
        route: 'user_card',
        screen: CardScreen(
          users: users,
        ))
  ];

  static Map<String, Widget Function(BuildContext contex)> getRoutes() {
    Map<String, Widget Function(BuildContext contex)> routes = {};

    for (MenuOption route in menuOption) {
      routes.addAll({route.route: (BuildContext context) => route.screen});
    }
    return routes;
  }
}

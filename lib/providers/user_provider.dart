import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_flutter/tarea1profe/models/models.dart';

class UserProvider extends ChangeNotifier {
  late List<User> userList;
  int? idUserSelect;

  String initialUrl = 'localhost:3000';
  Future<List<User>> getUsers() async {
    Uri urlLol = Uri.http(initialUrl, 'users');
    var response = await http.get(urlLol);
    var user = await jsonDecode(response.body) as List;
    List<User> ls = [];
    for (var element in user) {
      ls.add(User.fromMap(element));
    }
    userList = ls;
    return ls;

    // List<User> users = user.forEach((element) => User.fromMap(element));
    // return users;
  }

  User getUser(int id) {
    // Uri urlLol = Uri.http(initialUrl, 'users/$id');
    User user = userList.firstWhere((element) => element.id == idUserSelect);
    return user;
  }

  createUser(Map<String, dynamic> data) async {
    Uri urlLol = Uri.http(initialUrl, 'users');

    var res = await http.post(urlLol,
        body: jsonEncode(data),
        headers: <String, String>{'Content-Type': 'application/json'});

    return res.body;

    //getUsers();
  }

  updateUser(int id, Map<String, dynamic> data) async {
    Uri urlLol = Uri.http(initialUrl, 'users/$id');
    var res = await http.put(urlLol,
        body: jsonEncode(data),
        headers: <String, String>{'Content-Type': 'application/json'});
    return res.body;
  }

  deleteUser(int id) async {
    Uri urlLol = Uri.http(initialUrl, 'users/$id');
    var res = await http.delete(urlLol);
    return res.body;
  }
}

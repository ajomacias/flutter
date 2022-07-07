import 'package:flutter/material.dart';
import 'package:practice_flutter/data/users.dart';

class ListUserScreen extends StatelessWidget {
  ListUserScreen({Key? key}) : super(key: key);

  final List<User> usersList = users;

  void tapUser(BuildContext context, int index) {
    Navigator.pushNamed(
      context,
      'user',
      arguments: Params(
        user: usersList.elementAt(index).correo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users List(${usersList.length})',
        ),
      ),
      body: Center(
          child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: usersList.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 50,
            child: Row(
              children: [
                TextButton(
                  onPressed: () => tapUser(context, index),
                  child: Text(
                    '${usersList.elementAt(index).name}',
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}

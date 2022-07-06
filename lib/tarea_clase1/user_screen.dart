import 'package:flutter/material.dart';
import 'package:practice_flutter/data/users.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Params;
    final User user =
        users.firstWhere((User element) => element.correo == args.user);

    return Scaffold(
      appBar: AppBar(
        title: Text('${user.name}'),
      ),
    );
  }
}

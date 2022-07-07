import 'package:flutter/material.dart';
import 'package:practice_flutter/data/users.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextStyle formInputsStyle =
      const TextStyle(fontSize: 10, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Params;
    final User user =
        users.firstWhere((User element) => element.correo == args.user);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${user.name}',
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        body: Center(
            child: Form(
          key: _formKey,
          child: Container(
              padding: const EdgeInsets.all(10),
              width: 200,
              height: 300,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    initialValue: user.name,
                    style: formInputsStyle,
                  ),
                  TextFormField(
                    initialValue: user.correo,
                    style: formInputsStyle,
                  ),
                  TextFormField(
                    initialValue: user.password,
                    style: formInputsStyle,
                  ),
                ],
              )),
        )));
  }
}

import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea1profe/widgets/widgets.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User form'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 4.2),
          child: Column(children: const <Widget>[
            CustomTextFormField(
              helper: 'hola soy el helper',
            ),
            CustomTextFormField(
              helper: 'hola soy el helper',
            ),
            CustomTextFormField(
              helper: 'hola soy el helper',
            ),
            CustomTextFormField(
              helper: 'hola soy el helper',
            ),
            CustomTextFormField(
              helper: 'hola soy el helper',
            ),
          ]),
        ));
  }
}

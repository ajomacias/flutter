import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea1profe/widgets/widgets.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> myFormValues = {'campo1': ''};
    return Scaffold(
      appBar: AppBar(
        title: const Text('User form'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 4.2),
        child: Column(key: myFormKey, children: <Widget>[
          CustomTextFormField(
            helper: 'hola soy el helper',
            formPropperty: 'campo1',
            formValues: myFormValues,
          ),
        ]),
      ),
      floatingActionButton: ElevatedButton(
        child: const Text('Mostrar'),
        onPressed: () {
          print(myFormValues);
        },
      ),
    );
  }
}

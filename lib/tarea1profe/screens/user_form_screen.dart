import 'package:flutter/material.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User form'),
      ),
      body: Column(children: [
        TextFormField(
          initialValue: 'Juan Perez',
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            print(value);
          },
          /*validator: (value) {
            if (value.length < 3) return 'no debe ser menor a tres';
            
          },
          */
          decoration: const InputDecoration(
              hintText: 'Escriba su nombre',
              labelText: 'sisiss',
              helperText: 'solo mayusculas'),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice_flutter/providers/user_provider.dart';
import 'package:practice_flutter/tarea1profe/models/user.dart';
import 'package:practice_flutter/tarea1profe/widgets/widgets.dart';
import 'package:provider/provider.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  late User user;

  getProvider() {
    return Provider.of<UserProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    if (getProvider().idUserSelect == null) {
      user = User(lastname: '', name: '', username: '');
    } else {
      user = getProvider().getUser(getProvider().idUserSelect);
    }

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> myFormValues = {
      'name': '${user.name}',
      'username': '${user.lastname}',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('User form'),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 4.2),
          child: Column(
            key: myFormKey,
            children: [
              CustomTextFormField(
                formPropperty: 'name',
                formValues: myFormValues,
                value: myFormValues['name'],
              )
            ],
          )),
      floatingActionButton: Row(
        children: [
          ElevatedButton(
              child: const Text('wdsw'),
              onPressed: () {
                print(myFormValues);
                //
              }),
        ],
      ),
    );
  }
}

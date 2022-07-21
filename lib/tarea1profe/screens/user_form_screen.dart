import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea1profe/util/all_exports.dart'
    show User, UserProvider, CustomTextFormField, Provider;

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  late User user;
  bool isSubmiting = false;

  getProvider() {
    return Provider.of<UserProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    if (getProvider().idUserSelect == null) {
      user = User(lastname: '', name: '', username: '', email: '');
    } else {
      user = getProvider().getUser(getProvider().idUserSelect);
    }

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> myFormValues = {
      'email': '${user.email}',
      'name': '${user.name}',
      'username': '${user.username}',
      'lastname': '${user.lastname}'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('User form'),
      ),
      body: Center(
        child: Card(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            key: myFormKey,
            children: [
              CustomTextFormField(
                label: 'email',
                formPropperty: 'email',
                formValues: myFormValues,
                value: myFormValues['email'],
                sizeText: 13,
                opasityText: 0.7,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                label: 'name',
                formPropperty: 'name',
                formValues: myFormValues,
                value: myFormValues['name'],
                sizeText: 13,
                opasityText: 0.7,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                label: 'username',
                formPropperty: 'usernmae',
                formValues: myFormValues,
                value: myFormValues['username'],
                suffixIcon: const Icon(Icons.abc),
                sizeText: 13,
                opasityText: 0.7,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                label: 'lastname',
                formPropperty: 'lastname',
                formValues: myFormValues,
                value: myFormValues['lastname'],
                sizeText: 13,
                opasityText: 0.7,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [showSubmitButton()]),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  Widget showSubmitButton() {
    if (!isSubmiting) {
      return IconButton(
          color: Colors.white,
          onPressed: () {
            Future.delayed(const Duration(seconds: 4), () {
              setState(() {
                isSubmiting = false;
              });
            });
            setState(() {
              isSubmiting = true;
            });
          },
          icon: const Icon(Icons.save));
    } else {
      return const CircularProgressIndicator(
        color: Colors.white,
      );
    }
  }
}

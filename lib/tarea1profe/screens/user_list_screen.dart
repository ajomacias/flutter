import 'package:flutter/material.dart';
import 'package:practice_flutter/providers/user_provider.dart';
import 'package:practice_flutter/tarea1profe/models/models.dart';
import 'package:provider/provider.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);

  handlePress(UserProvider userProvider, AsyncSnapshot<List<User>> snapShot,
      context, index) {
    userProvider.idUserSelect = snapShot.data![index].id;
    Navigator.pushNamed(context, 'user_form');
  }

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: FutureBuilder(
        future: userProvider.getUsers(),
        builder: (_, AsyncSnapshot<List<User>> snapShot) {
          if (snapShot.hasData) {
            return ListView.separated(
                itemBuilder: (context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.abc_outlined),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            snapShot.data![index].email ?? '',
                            style: const TextStyle(fontSize: 7),
                          ),
                          IconButton(
                              onPressed: () {
                                handlePress(
                                    userProvider, snapShot, context, index);
                              },
                              icon: const Icon(Icons.update))
                        ],
                      ));
                },
                separatorBuilder: (_, int index) {
                  return const Divider();
                },
                itemCount: snapShot.data!.length);
          }
          return Center(
            child: Image.asset('images/loading.gif'),
          );
        },
      ),
    );
  }
}

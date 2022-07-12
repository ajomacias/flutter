import 'package:flutter/material.dart';
import 'package:practice_flutter/data/users.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({required this.user, key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: [
                FadeInImage.assetNetwork(
                    placeholder: 'images/descarga.png',
                    image:
                        'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png'),
                Text(user.name),
                Text(user.correo ?? "")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                    child: const Text('VER'),
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text(user.name),
                            content: Image.network('${user.image}'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        )),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

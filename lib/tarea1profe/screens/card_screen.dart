import 'package:flutter/material.dart';
import 'package:practice_flutter/data/users.dart';
import 'package:practice_flutter/tarea1profe/widgets/CardWibget.dart';

// ignore: must_be_immutable
class CardScreen extends StatefulWidget {
  CardScreen({Key? key, required this.users}) : super(key: key);

  List<User> users;

  @override
  State<StatefulWidget> createState() {
    return _CardScreenState();
  }
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    List<CardWidget> sos = [];

    for (User index in widget.users) {
      sos.add(CardWidget(user: index));
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen card'),
        ),
        body: Center(
          child: Column(children: <Widget>[...sos]),
        ));
  }
}

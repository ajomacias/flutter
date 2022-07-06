import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void change(option) {
    if (option == '+') {
      setState(() {
        count++;
      });
    } else if (option == '-') {
      if (count > 0) {
        setState(() {
          count--;
        });
      }
    } else {
      setState(() {
        count = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi AppBar'),
        elevation: 5.5,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'count',
                style: fontSize30,
              ),
              Text(
                '$count',
                style: fontSize30,
              ),
            ]),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <FloatingActionButton>[
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  change('+');
                }),
            FloatingActionButton(
                child: const Icon(Icons.remove, color: Colors.red),
                onPressed: () {
                  change('-');
                }),
            FloatingActionButton(
                child: const Icon(Icons.restart_alt_outlined,
                    color: Colors.orange),
                onPressed: () {
                  change('null');
                }),
          ]),
    );
  }
}

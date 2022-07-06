import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Center(
          child: Column(
        children: const [Text('Page1')],
      )),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                'pag1',
              );
            },
            child: const Text('Page1'),
          ),
        ],
      ),
    );
  }
}

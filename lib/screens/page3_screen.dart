import 'package:flutter/material.dart';

class Page3Screen extends StatelessWidget {
  const Page3Screen({Key? key}) : super(key: key);

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
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdownButton extends StatelessWidget {
  CustomDropdownButton({Key? key, required this.items}) : super(key: key);

  List<String> items;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: items[0],
      icon: const Icon(Icons.arrow_downward),
      onChanged: (String? newValue) {
        print(newValue);
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

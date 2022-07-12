import 'package:flutter/material.dart';
import 'package:practice_flutter/tarea1profe/themes/theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    key,
    this.hintText,
    this.icon,
    this.value,
    this.helper,
    this.autoFocus,
    this.suffixIcon,
    this.private,
    this.type,
    this.label,
  }) : super(key: key);
  final String? hintText;
  final Icon? icon;
  final String? value;
  final String? helper;
  final bool? autoFocus;
  final Icon? suffixIcon;
  final bool? private;
  final TextInputType? type;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      obscureText: private ?? false,
      initialValue: value,
      autofocus: autoFocus ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        border: AppTheme.inPutBorder,
        helperText: helper,
        icon: icon ?? AppTheme.icon,
        contentPadding: EdgeInsets.zero,
        suffixIcon: suffixIcon,
        labelText: label,
      ),
    );
  }
}

/*
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
 */
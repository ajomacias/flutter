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
    this.sizeText,
    this.opasityText,
    required this.formPropperty,
    required this.formValues,
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
  final Map<String, String?> formValues;
  final String formPropperty;
  final double? sizeText;
  final double? opasityText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontSize: sizeText,
          color: Colors.black.withOpacity(opasityText ?? 1)),
      keyboardType: type,
      obscureText: private ?? false,
      initialValue: value,
      autofocus: autoFocus ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        border: AppTheme.inPutBorder,
        helperText: helper,
        icon: icon,
        contentPadding: EdgeInsets.zero,
        suffixIcon: suffixIcon,
        labelText: label,
      ),
      onChanged: (value) {
        formValues[formPropperty] = value;
      },
    );
  }
}

import 'package:flutter/widgets.dart';

class TextFieldModel {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final String labelText;
  final String hintText;
  bool isPassword;

  final String? Function(String?)? validator;
  final TextInputType? type;
  TextFieldModel({
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    required this.isPassword,
    required this.validator,
    this.type,
  });
}

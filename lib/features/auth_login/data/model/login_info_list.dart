import 'package:flutter/material.dart';
import 'package:products_api/features/auth/data/models/text_field_model.dart';
import 'package:products_api/features/auth/view/widget/validator.dart';
import 'package:products_api/features/auth_login/view/screen/login_screen.dart';

List<TextFieldModel> loginList = [
  TextFieldModel(
    controller: emailControllerLogin,
    prefixIcon: Icons.email,
    labelText: 'Email',
    hintText: 'Enter Email',
    isPassword: false,
    validator: (value) {
      return MyValidators.emailValidator(value);
    },
  ),
];

import 'package:flutter/material.dart';
import 'package:products_api/features/auth/data/models/text_field_model.dart';
import 'package:products_api/features/auth/view/widget/validator.dart';
import 'package:products_api/features/auth_login/view/screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<TextFieldModel> loginList = [
  TextFieldModel(
    controller: emailControllerLogin,
    prefixIcon: Icons.email,
    labelText: 'Email',
    hintText: 'Enter Email',
    validator: (value) {
      return MyValidators.emailValidator(value);
    },
  ),
];

class CashToken {
  static SharedPreferences? shared;
  static init() async {
    shared = await SharedPreferences.getInstance();
  }
}

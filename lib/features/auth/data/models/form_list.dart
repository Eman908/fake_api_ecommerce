import 'package:flutter/material.dart';
import 'package:products_api/features/auth/data/models/text_field_model.dart';
import 'package:products_api/features/auth/view/screen/auth_screen.dart';
import 'package:products_api/features/auth/view/widget/validator.dart';

List<TextFieldModel> formList = [
  TextFieldModel(
    controller: nameController,
    prefixIcon: Icons.person,
    suffixIcons: null,
    labelText: 'Name',
    hintText: 'Enter Name',
    isPassword: false,
    validator: (value) {
      return MyValidators.displayNameValidator(value);
    },
  ),
  TextFieldModel(
    controller: emailController,
    prefixIcon: Icons.email,
    suffixIcons: null,
    labelText: 'Email',
    hintText: 'Enter Email',
    isPassword: false,
    validator: (value) {
      return MyValidators.emailValidator(value);
    },
  ),
  TextFieldModel(
    type: TextInputType.number,
    controller: phoneController,
    prefixIcon: Icons.phone,
    suffixIcons: null,
    labelText: 'Phone',
    hintText: 'Enter Phone',
    isPassword: false,
    validator: (value) {
      return MyValidators.phoneValidator(value);
    },
  ),
  TextFieldModel(
    type: TextInputType.number,
    controller: idController,
    prefixIcon: Icons.picture_in_picture_outlined,
    suffixIcons: null,
    labelText: 'National ID',
    hintText: 'Enter National ID',
    isPassword: false,
    validator: (value) {
      return MyValidators.nationalIdValidator(value);
    },
  ),
  TextFieldModel(
    controller: genderController,
    prefixIcon: Icons.people,
    suffixIcons: null,
    labelText: 'Gender',
    hintText: 'Enter Gender',
    isPassword: false,
    validator: (value) {
      return MyValidators.genderValidator(value);
    },
  ),
  TextFieldModel(
    controller: passwordController,
    prefixIcon: Icons.lock,
    suffixIcons: Icons.visibility_off_outlined,
    icon: Icons.visibility_outlined,
    labelText: 'Password',
    hintText: 'Enter Password',
    isPassword: true,
    validator: (value) {
      return MyValidators.passwordValidator(value);
    },
  ),
  TextFieldModel(
    controller: tokenController,
    prefixIcon: Icons.token,
    suffixIcons: null,
    labelText: 'Token',
    hintText: 'Enter Token',
    isPassword: false,
    validator: (value) {
      return MyValidators.tokenValidator(value);
    },
  ),
];

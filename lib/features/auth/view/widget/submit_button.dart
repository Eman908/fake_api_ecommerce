import 'package:flutter/material.dart';
import 'package:products_api/core/widgets/button_style.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth/view/screen/auth_screen.dart';

MaterialButton submitButton({required AuthCubit cubit}) {
  return MaterialButton(
    height: 48,
    onPressed: () {
      cubit.getAuthDataCubit(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        nationalId: idController.text,
        gender: genderController.text,
        password: passwordController.text,
        token: tokenController.text,
      );
    },
    color: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text("Submit", style: buttonStyle()),
  );
}

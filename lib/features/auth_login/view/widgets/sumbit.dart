import 'package:flutter/material.dart';
import 'package:products_api/core/widgets/button_style.dart';
import 'package:products_api/features/auth_login/cubit/login_cubit.dart';
import 'package:products_api/features/auth_login/view/screen/login_screen.dart';

MaterialButton submitButton2({required LoginCubit cubit}) {
  return MaterialButton(
    height: 48,
    onPressed: () {
      cubit.getLoginCubitData(
        email: emailControllerLogin.text,
        password: passwordControllerLogin.text,
      );
    },
    color: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text("Submit", style: buttonStyle()),
  );
}

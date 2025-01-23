import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/features/auth/view/screen/auth_screen.dart';
import 'package:products_api/features/auth/view/widget/app_bar_form.dart';
import 'package:products_api/features/auth/view/widget/custom_input_field.dart';
import 'package:products_api/features/auth/view/widget/password_input_field.dart';
import 'package:products_api/features/auth_login/cubit/login_cubit.dart';
import 'package:products_api/features/auth_login/cubit/login_state.dart';
import 'package:products_api/features/auth_login/data/model/login_info_list.dart';
import 'package:products_api/features/auth_login/view/widgets/sumbit.dart';
import 'package:products_api/features/products/view/screen/products_screen.dart';

final TextEditingController emailControllerLogin = TextEditingController();
final TextEditingController passwordControllerLogin = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (BuildContext context, LoginState state) {
        if (state is LoginSuccessState) {
          if (state.loginUserData["status"] == "success") {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text(state.loginUserData["message"]),
              ),
            );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const ProductsScreen();
                },
              ),
            );
          } else if (state.loginUserData["status"] == "error") {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.loginUserData["message"]),
              ),
            );
          }
        }
      },
      builder: (context, state) {
        LoginCubit cubit = BlocProvider.of(context);
        return Scaffold(
          appBar: appBarForm(title: 'LogIn', isLeading: false),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomInputField(f: loginList[0]),
                  const SizedBox(
                    height: 24,
                  ),
                  PasswordCustomButton(controller: passwordControllerLogin),
                  if (state is LoginLoadingState)
                    const Center(
                      child: SpinKitThreeBounce(
                        color: AppColor.colorBlue,
                        size: 30.0,
                      ),
                    ),
                  const SizedBox(
                    height: 24,
                  ),
                  submitButton2(cubit: cubit),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have account ? "),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const AuthScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "SignUp",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

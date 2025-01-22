import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth/cubit/auth_state.dart';
import 'package:products_api/features/auth/view/widget/app_bar_form.dart';
import 'package:products_api/features/auth/view/widget/form_builder.dart';
import 'package:products_api/features/auth_login/view/screen/login_screen.dart';

final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController idController = TextEditingController();
final TextEditingController tokenController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController genderController = TextEditingController();
final TextEditingController imageController = TextEditingController();

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarForm(title: 'Sign Up'),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (BuildContext context, state) {
          if (state is AuthSuccessState) {
            if (state.userData["status"] == "success") {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(state.userData["message"]),
                ),
              );
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const LoginScreen();
              }));
            }
            if (state.userData["status"] == "error") {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.userData["message"]),
                ),
              );
            }
          }
        },
        builder: (context, state) {
          AuthCubit cubit = BlocProvider.of(context);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Builder(builder: (context) {
              return SingleChildScrollView(
                child: FormBuilder(
                  cubit: cubit,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}

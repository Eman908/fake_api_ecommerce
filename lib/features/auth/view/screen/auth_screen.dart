import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth/cubit/auth_state.dart';
import 'package:products_api/features/auth/view/widget/form_builder.dart';

final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController idController = TextEditingController();
final TextEditingController tokenController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController genderController = TextEditingController();

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    nameController.addListener(() {});
    emailController.addListener(() {});
    phoneController.addListener(() {});
    idController.addListener(() {});
    tokenController.addListener(() {});
    passwordController.addListener(() {});
    genderController.addListener(() {});

    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    idController.dispose();
    tokenController.dispose();
    passwordController.dispose();

    genderController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: mainAppBar(title: "User Form", isLeading: false),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (BuildContext context, state) {
            if (state is AuthSuccessState) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.userData["message"])));
            }
          },
          builder: (context, state) {
            AuthCubit cubit = BlocProvider.of(context);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: FormBuilder(cubit: cubit),
            );
          },
        ),
      ),
    );
  }
}

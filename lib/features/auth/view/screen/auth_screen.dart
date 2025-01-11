import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth/cubit/auth_state.dart';
import 'package:products_api/features/auth/view/widget/validator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController idController = TextEditingController();
final TextEditingController tokenController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController genderController = TextEditingController();

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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 16,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return MyValidators.displayNameValidator(value);
                        },
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: "Name",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return MyValidators.emailValidator(value);
                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: "Email",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          return MyValidators.phoneValidator(value);
                        },
                        controller: phoneController,
                        decoration: const InputDecoration(
                          labelText: "Phone",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          return MyValidators.nationalIdValidator(value);
                        },
                        controller: idController,
                        decoration: const InputDecoration(
                          labelText: "National ID",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return MyValidators.genderValidator(value);
                        },
                        controller: genderController,
                        decoration: const InputDecoration(
                          labelText: "Gender",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return MyValidators.passwordValidator(value);
                        },
                        controller: passwordController,
                        decoration: const InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return MyValidators.tokenValidator(value);
                        },
                        controller: tokenController,
                        decoration: const InputDecoration(
                          labelText: "Token",
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          cubit.getAuthDataCubit(
                              name: nameController.text,
                              email: emailController.text,
                              phone: phoneController.text,
                              nationalId: idController.text,
                              gender: genderController.text,
                              password: passwordController.text,
                              token: tokenController.text,
                              profileImage:
                                  "data:image/jpeg;base64,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");
                        },
                        color: Colors.black,
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

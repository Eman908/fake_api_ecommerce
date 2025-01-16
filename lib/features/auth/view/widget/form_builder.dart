import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth/cubit/auth_state.dart';
import 'package:products_api/features/auth/data/models/form_list.dart';
import 'package:products_api/features/auth/view/screen/auth_screen.dart';
import 'package:products_api/features/auth/view/widget/custom_input_field.dart';
import 'package:products_api/features/auth/view/widget/gender_selector.dart';
import 'package:products_api/features/auth/view/widget/image_uploader.dart';
import 'package:products_api/features/auth/view/widget/password_input_field.dart';
import 'package:products_api/features/auth/view/widget/submit_button.dart';
import 'package:products_api/features/auth_login/view/screen/login_screen.dart';

class FormBuilder extends StatelessWidget {
  const FormBuilder({
    required this.cubit,
    super.key,
  });
  final AuthCubit cubit;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Form(
          child: Column(
            spacing: 16,
            children: [
              imageUploader(cubit: cubit),
              const Divider(
                thickness: 1,
              ),
              CustomInputField(f: formList[0]),
              CustomInputField(f: formList[1]),
              CustomInputField(f: formList[2]),
              CustomInputField(f: formList[3]),
              GenderSelection(genderController: genderController),
              PasswordCustomButton(
                controller: passwordController,
              ),
              CustomInputField(f: formList[4]),
              if (state is AuthLoadingState)
                const Center(
                    child: SpinKitThreeBounce(
                  color: AppColor.colorBlue,
                  size: 30.0,
                )),
              submitButton(cubit: cubit),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Already have account ? "),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "LogIn",
                  ),
                ),
              ]),
            ],
          ),
        );
      },
    );
  }
}

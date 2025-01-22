import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/auth/view/widget/app_bar_form.dart';
import 'package:products_api/features/profile%20user/cubit/user_profile_cubit.dart';
import 'package:products_api/features/profile%20user/cubit/user_profile_state.dart';
import 'package:products_api/features/profile%20user/view/widgets/user_widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarForm(title: "Profile"),
      body: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          if (state is UserSuccessState) {
            return UserWidget(user: state.userData);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

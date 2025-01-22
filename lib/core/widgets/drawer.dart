import 'package:flutter/material.dart';
import 'package:products_api/features/profile%20user/view/screen/user_profile_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(child: UserProfileScreen());
  }
}

import 'package:flutter/material.dart';
import 'package:products_api/features/auth/view/screen/auth_screen.dart';
//import 'package:products_api/features/splash/view/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}

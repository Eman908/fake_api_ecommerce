import 'package:flutter/material.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/features/home/view/widgets/category_card_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'Categories'),
      backgroundColor: Colors.white,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
        child: CategoryCardBuilder(),
      ),
    );
  }
}

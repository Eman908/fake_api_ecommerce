import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

AppBar mainAppBar({required String title, required bool isLeading}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s24,
      ),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    automaticallyImplyLeading: isLeading,
  );
}

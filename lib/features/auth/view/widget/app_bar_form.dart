import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

AppBar appBarForm() {
  return AppBar(
    toolbarHeight: 80,
    elevation: 4,
    shadowColor: Colors.grey,
    title: const Text(
      "User Data",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s24,
          color: Colors.white),
    ),
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
  );
}

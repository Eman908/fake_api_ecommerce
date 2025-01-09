import 'package:flutter/material.dart';

AppBar mainAppBar({required String title}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
  );
}

import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

AppBar mainAppBar(
    {required String title,
    required bool isLeading,
    required void Function()? onPressed}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s24,
          color: Colors.white),
    ),
    toolbarHeight: 80,
    elevation: 4,
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
    automaticallyImplyLeading: isLeading,
    shadowColor: Colors.grey,
    iconTheme: const IconThemeData(
      color: Colors.white, //change your color here
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            )),
      )
    ],
  );
}

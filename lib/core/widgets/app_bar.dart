import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

AppBar mainAppBar({
  required String title,
  required bool isLeading,
  required void Function()? onPressed,
  required void Function()? onPressed2,
}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s24,
          color: Colors.black),
    ),
    toolbarHeight: 80,
    centerTitle: true,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: isLeading,
    iconTheme: const IconThemeData(
      color: Colors.black, //change your color here
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: onPressed2,
              icon: const Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

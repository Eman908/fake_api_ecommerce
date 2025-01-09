import 'package:flutter/material.dart';

class CategoryCardModel {
  final Color color;
  final String title;
  final IconData icon;
  final void Function()? onTap;
  CategoryCardModel(
      {required this.color,
      required this.icon,
      required this.title,
      required this.onTap});
}

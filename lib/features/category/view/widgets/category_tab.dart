import 'package:flutter/material.dart';

Container categoryTab({required dynamic categoryModel}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.blueGrey.withAlpha(50),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        categoryModel.category,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent),
      ),
    ),
  );
}

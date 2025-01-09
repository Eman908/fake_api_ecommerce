import 'package:flutter/material.dart';

Row ratingRow({required dynamic categoryModel}) {
  return Row(
    children: [
      Text(
        "${categoryModel.ratingModel.rate.toString()} ⭐",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      Text(
        "/(${categoryModel.ratingModel.count} review)",
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      ),
    ],
  );
}

import 'package:flutter/material.dart';

Row priceRow({required dynamic categoryModel}) {
  return Row(
    children: [
      const Text(
        'Price: ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      Text(
        categoryModel.price.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.pinkAccent,
        ),
      ),
    ],
  );
}

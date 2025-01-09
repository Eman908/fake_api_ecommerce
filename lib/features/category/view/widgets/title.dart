import 'package:flutter/material.dart';

Text titleText({required dynamic categoryModel}) {
  return Text(
    categoryModel.title,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

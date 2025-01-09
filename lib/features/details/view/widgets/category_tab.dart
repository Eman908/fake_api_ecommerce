import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

Container categoryTab({required dynamic categoryModel}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.grey.withAlpha(35),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        categoryModel.category,
        style: const TextStyle(
          fontSize: AppSize.s16,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

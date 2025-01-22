import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

Text titleText({required dynamic categoryModel}) {
  return Text(
    categoryModel.title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: AppSize.s20,
    ),
  );
}

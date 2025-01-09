import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';
import 'package:products_api/core/constants/app_string.dart';

Row priceRow({required dynamic categoryModel}) {
  return Row(
    children: [
      const Text(
        AppString.price,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s18,
        ),
      ),
      Text(
        categoryModel.price.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s18,
          color: AppColor.colorPink,
        ),
      ),
    ],
  );
}

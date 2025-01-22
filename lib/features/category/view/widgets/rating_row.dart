import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';

Row ratingRow({required dynamic categoryModel}) {
  return Row(
    children: [
      Text(
        "${categoryModel.ratingModel.rate.toString()} ⭐",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s16,
        ),
      ),
      Text(
        "/(${categoryModel.ratingModel.count} review)",
        style: const TextStyle(
          fontSize: AppSize.s14,
          color: AppColor.colorGrey,
        ),
      ),
    ],
  );
}

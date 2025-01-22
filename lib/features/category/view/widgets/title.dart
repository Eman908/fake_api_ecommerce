import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';

Text titleText({required dynamic categoryModel}) {
  return Text(
    categoryModel.title,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(
      fontSize: AppSize.s18,
      fontWeight: FontWeight.bold,
    ),
  );
}

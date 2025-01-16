import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';
import 'package:products_api/core/constants/app_string.dart';

Row priceRow({required dynamic categoryModel}) {
  return Row(
    children: [
      Text(
        AppString.price,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s18.sp,
        ),
      ),
      Text(
        categoryModel.price.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s18.sp,
          color: AppColor.colorPink,
        ),
      ),
    ],
  );
}

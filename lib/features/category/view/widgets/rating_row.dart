import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';

Row ratingRow({required dynamic categoryModel}) {
  return Row(
    children: [
      Text(
        "${categoryModel.ratingModel.rate.toString()} ⭐",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s16.sp,
        ),
      ),
      Text(
        "/(${categoryModel.ratingModel.count} review)",
        style: TextStyle(
          fontSize: AppSize.s14.sp,
          color: AppColor.colorGrey,
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_api/core/constants/app_size.dart';

Text titleText({required dynamic categoryModel}) {
  return Text(
    categoryModel.title,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: AppSize.s20.sp,
    ),
  );
}

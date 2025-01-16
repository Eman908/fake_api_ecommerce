import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_api/core/constants/app_size.dart';

Container categoryTab({required dynamic categoryModel}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
      color: Colors.grey.withAlpha(35),
    ),
    child: Padding(
      padding: EdgeInsets.all(4.0.h),
      child: Text(
        categoryModel.category,
        style: TextStyle(
          fontSize: AppSize.s16.sp,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

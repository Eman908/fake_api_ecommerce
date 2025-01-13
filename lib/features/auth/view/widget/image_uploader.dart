import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_size.dart';
import 'package:products_api/core/constants/app_string.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';

Row imageUploader({required AuthCubit cubit}) {
  return Row(spacing: 16, children: [
    const Expanded(
      child: Text(
        AppString.imagePicker,
        style: TextStyle(
          fontSize: AppSize.s18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    cubit.imageFile == null
        ? InkWell(
            onTap: () {
              cubit.addImage();
            },
            child: const Icon(
              Icons.camera,
              size: 100,
              color: Colors.black,
            ),
          )
        : Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: FileImage(cubit.imageFile!),
                fit: BoxFit.fill,
              ),
            ))
  ]);
}

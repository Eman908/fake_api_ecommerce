import 'package:flutter/material.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';

Row imageUploader({required AuthCubit cubit}) {
  return Row(
    spacing: 16,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
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
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: FileImage(cubit.imageFile!),
                  fit: BoxFit.fill,
                ),
              ),
            )
    ],
  );
}

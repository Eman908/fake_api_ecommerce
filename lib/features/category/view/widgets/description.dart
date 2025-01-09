import 'package:flutter/material.dart';

Text descriptionText({required dynamic categoryModel}) {
  return Text(
    categoryModel.description,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );
}

import 'package:flutter/material.dart';

OutlineInputBorder inputBorderStyle(Color color) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
    ),
    borderRadius: BorderRadius.circular(8),
  );
}

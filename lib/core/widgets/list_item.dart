import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';

ListTile listItem({required String txt, required void Function()? onTap}) {
  return ListTile(
    onTap: onTap,
    title: Text(
      txt,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s20,
      ),
    ),
    trailing: const FaIcon(
      FontAwesomeIcons.angleRight,
      color: AppColor.colorBlue,
    ),
  );
}

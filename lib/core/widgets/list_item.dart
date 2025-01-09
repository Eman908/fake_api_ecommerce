import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

ListTile listItem({required String txt, required void Function()? onTap}) {
  return ListTile(
    onTap: onTap,
    title: Text(
      txt,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    trailing: const FaIcon(
      FontAwesomeIcons.angleRight,
      color: Colors.grey,
    ),
  );
}

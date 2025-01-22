import 'package:flutter/widgets.dart';

Container imageShower({required String image}) {
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
          image,
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:products_api/features/category/view/screen/category_screen.dart';
import 'package:products_api/features/home/data/models/category_card_model.dart';

List<CategoryCardModel> categoryList(BuildContext context) {
  return [
    CategoryCardModel(
      color: const Color(0xfff842c3),
      icon: FontAwesomeIcons.plug,
      title: 'Electronics',
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(
              endPoint: 'electronics',
              title: 'Electronics',
            ),
          ),
        );
      },
    ),
    CategoryCardModel(
      color: const Color(0xff7b4bff),
      icon: FontAwesomeIcons.solidGem,
      title: 'Jewelery',
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(
              endPoint: 'jewelery',
              title: 'Jewelery',
            ),
          ),
        );
      },
    ),
    CategoryCardModel(
      color: const Color(0xff1ba7fe),
      icon: FontAwesomeIcons.userTie,
      title: "Men's Clothes",
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(
              endPoint: "men's%20clothing",
              title: "Men's Clothes",
            ),
          ),
        );
      },
    ),
    CategoryCardModel(
      color: const Color(0xff4bdf6d),
      icon: FontAwesomeIcons.shirt,
      title: "Women's Clothes",
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(
              endPoint: "women's%20clothing",
              title: "Women's Clothes",
            ),
          ),
        );
      },
    ),
  ];
}

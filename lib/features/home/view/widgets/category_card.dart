import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:products_api/features/home/data/models/category_card_model.dart';
import 'package:products_api/features/home/view/widgets/category_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final CategoryCardModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Card(
        color: item.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            FaIcon(
              item.icon,
              color: Colors.white.withAlpha(220),
            ),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: categoryText(),
            ),
          ],
        ),
      ),
    );
  }
}

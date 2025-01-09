import 'package:flutter/material.dart';
import 'package:products_api/features/home/data/models/catgeory_card_list.dart';
import 'package:products_api/features/home/view/widgets/category_card.dart';

class CategoryCardBuilder extends StatelessWidget {
  const CategoryCardBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.2,
      children: List.generate(categoryList(context).length, (index) {
        return CategoryCard(
          item: categoryList(context)[index],
        );
      }),
    );
  }
}

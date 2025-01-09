import 'package:flutter/material.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/features/category/data/models/category_model.dart';
import 'package:products_api/features/details/view/widgets/category_tab.dart';
import 'package:products_api/features/category/view/widgets/price_widget.dart';
import 'package:products_api/features/category/view/widgets/rating_row.dart';
import 'package:products_api/features/details/view/widgets/title_text.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar(title: 'Details', isLeading: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.network(
                  categoryModel.image,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: titleText(categoryModel: categoryModel),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  priceRow(categoryModel: categoryModel),
                  ratingRow(categoryModel: categoryModel),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                categoryModel.description,
                style: const TextStyle(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: categoryTab(categoryModel: categoryModel),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/features/category/data/models/category_model.dart';
import 'package:products_api/features/category/view/widgets/price_widget.dart';
import 'package:products_api/features/category/view/widgets/rating_row.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar(title: 'Details'),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
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
          Text(
            categoryModel.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              priceRow(categoryModel: categoryModel),
              ratingRow(categoryModel: categoryModel),
            ],
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
          Text(
            categoryModel.description,
            style: const TextStyle(),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

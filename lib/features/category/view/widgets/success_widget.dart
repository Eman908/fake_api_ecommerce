import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_api/features/category/view/widgets/description.dart';
import 'package:products_api/features/category/data/models/category_model.dart';
import 'package:products_api/features/category/view/widgets/price_widget.dart';
import 'package:products_api/features/category/view/widgets/rating_row.dart';
import 'package:products_api/features/category/view/widgets/title.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({required this.categoryModel, super.key});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Row(
            spacing: 8,
            children: [
              Image.network(
                categoryModel.image,
                fit: BoxFit.contain,
                width: 100.w,
                height: 100.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleText(categoryModel: categoryModel),
                    descriptionText(categoryModel: categoryModel),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            priceRow(categoryModel: categoryModel),
                            ratingRow(categoryModel: categoryModel),
                          ],
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';
import 'package:products_api/core/constants/app_string.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/features/cart/cubit/cart_cubit.dart';
import 'package:products_api/features/products/data/model/products_model.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.productsModel});
  final ProductsModel productsModel;
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
                  productsModel.productImage,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    productsModel.productName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.s20,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      const Text(
                        AppString.price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.s20,
                        ),
                      ),
                      Text(
                        productsModel.productPrice.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.s20,
                          color: AppColor.colorBlue,
                        ),
                      ),
                    ],
                  ),
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
              child: productsModel.producrDescription == null
                  ? const Text('')
                  : Text(
                      productsModel.producrDescription!,
                      style: const TextStyle(fontSize: 18),
                    ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                onPressed: () {
                  CartCubit.get(context).getAddToCartCubit();
                },
                padding: const EdgeInsets.all(16),
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: const Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

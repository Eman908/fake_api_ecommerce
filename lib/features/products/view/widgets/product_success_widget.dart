import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';
import 'package:products_api/core/constants/app_string.dart';
import 'package:products_api/features/cart/cubit/cart_cubit.dart';
import 'package:products_api/features/cart/cubit/cart_state.dart';
import 'package:products_api/features/products/data/model/products_model.dart';

class ProductSuccessWidget extends StatelessWidget {
  const ProductSuccessWidget({super.key, required this.productsModel});
  final ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                productsModel.productImage,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              productsModel.productName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: AppSize.s18,
                fontWeight: FontWeight.bold,
              ),
            ),
            productsModel.producrDescription == null
                ? const Text('')
                : Text(
                    productsModel.producrDescription!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          AppString.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppSize.s18,
                          ),
                        ),
                        Text(
                          productsModel.productPrice.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppSize.s18,
                            color: AppColor.colorBlue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    CartCubit.get(context).getAddToCartCubit();
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

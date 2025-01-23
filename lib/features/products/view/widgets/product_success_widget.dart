import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_color.dart';
import 'package:products_api/core/constants/app_size.dart';
import 'package:products_api/core/constants/app_string.dart';
import 'package:products_api/features/cart/cubit/cart_cubit.dart';
import 'package:products_api/features/favorite/cubit/favorite_cubit.dart';
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
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 8),
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    child: IconButton(
                      onPressed: () {
                        FavoriteCubit.get(context).addToFavoriteCubit(
                          productId: productsModel.productId,
                        );
                      },
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ),
                  CircleAvatar(
                    child: IconButton(
                      onPressed: () {
                        CartCubit.get(context).getAddToCartCubit(
                            productId: productsModel.productId);
                      },
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
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
            )
          ],
        ),
      ),
    );
  }
}

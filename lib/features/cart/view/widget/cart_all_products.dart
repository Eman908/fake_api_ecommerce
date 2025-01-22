import 'package:flutter/material.dart';
import 'package:products_api/features/cart/data/model/cart_product_model.dart';

class CartAllProducts extends StatelessWidget {
  const CartAllProducts({super.key, required this.cp, required this.onPressed});
  final CartProductModel cp;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.delete_forever,
        ),
      ),
      leading: Text(cp.name),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/auth/view/widget/app_bar_form.dart';
import 'package:products_api/features/cart/cubit/cart_cubit.dart';
import 'package:products_api/features/cart/cubit/cart_state.dart';
import 'package:products_api/features/cart/view/widget/cart_all_products.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarForm(title: "My Cart", isLeading: true),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartProductsSuccess) {
            return ListView.builder(
              itemCount: state.cartProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CartAllProducts(
                    cp: state.cartProducts[index],
                    onPressed: () {
                      CartCubit.get(context).cartDeleteCubit(
                          productId: state.cartProducts[index].productId);
                    },
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

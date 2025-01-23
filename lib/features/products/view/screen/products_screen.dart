import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/core/widgets/app_bar.dart';
import 'package:products_api/core/widgets/drawer.dart';
import 'package:products_api/features/cart/view/screen/cart_screen.dart';
import 'package:products_api/features/favorite/view/screen/favorite_screen.dart';
import 'package:products_api/features/products/cubit/product_cubit.dart';
import 'package:products_api/features/products/cubit/product_state.dart';
import 'package:products_api/features/products/view/screen/product_description.dart';
import 'package:products_api/features/products/view/widgets/product_success_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar(
        title: "Products",
        isLeading: true,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const CartScreen();
              },
            ),
          );
        },
        onPressed2: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const FavoriteScreen();
              },
            ),
          );
        },
      ),
      drawer: const Drawer(
        child: MainDrawer(),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductSuccessState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
              child: GridView.count(
                //physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.7,
                children: List.generate(
                  state.productData.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ProductDescription(
                              productsModel: state.productData[index]);
                        }));
                      },
                      child: ProductSuccessWidget(
                        productsModel: state.productData[index],
                      ),
                    );
                  },
                ),
              ),
            );
          } else if (state is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Text("something went wrong");
          }
        },
      ),
    );
  }
}

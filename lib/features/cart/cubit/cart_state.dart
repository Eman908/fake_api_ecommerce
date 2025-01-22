import 'package:products_api/features/cart/data/model/cart_product_model.dart';

sealed class CartState {}

final class CartInitial extends CartState {}

final class CartSuccessState extends CartState {}

final class CartLoadingState extends CartState {}

final class CartProductsSuccess extends CartState {
  List<CartProductModel> cartProducts;
  CartProductsSuccess({required this.cartProducts});
}

final class CartDeleteState extends CartState {}

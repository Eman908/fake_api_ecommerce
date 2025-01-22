import 'package:products_api/features/products/data/model/products_model.dart';

sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductSuccessState extends ProductState {
  List<ProductsModel> productData;
  ProductSuccessState({required this.productData});
}

final class ProductLoadingState extends ProductState {}

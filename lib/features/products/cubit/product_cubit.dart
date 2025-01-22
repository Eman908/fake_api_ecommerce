import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/products/cubit/product_state.dart';
import 'package:products_api/features/products/data/service/product_service.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  ProductService productService = ProductService();

  getProductDataCubit() async {
    emit(ProductLoadingState());
    var success = await productService.getProductsData();
    emit(ProductSuccessState(productData: success));
  }
}

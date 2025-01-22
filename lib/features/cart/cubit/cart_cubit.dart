import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/cart/cubit/cart_state.dart';
import 'package:products_api/features/cart/data/service/cart_service.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  static CartCubit get(context) => BlocProvider.of(context);
  CartService cartService = CartService();

  getAddToCartCubit() {
    emit(CartLoadingState());
    cartService.gerCartAdd();
    emit(CartSuccessState());
  }
}

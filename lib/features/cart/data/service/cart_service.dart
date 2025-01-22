import 'package:dio/dio.dart';
import 'package:products_api/core/widgets/value.dart';
import 'package:products_api/features/cart/data/model/cart_product_model.dart';

class CartService {
  final Dio dio = Dio();

  gerCartAdd({required String productId}) async {
    Response response = await dio.post(
      'https://elwekala.onrender.com/cart/add',
      data: {"nationalId": getId, "productId": productId, "quantity": "1"},
    );
    var jsonData = response.data;

    return jsonData;
  }

  deleteProduct({required String productId}) async {
    Response response = await dio.delete(
      'https://elwekala.onrender.com/cart/delete',
      data: {"nationalId": getId, "productId": productId, "quantity": "1"},
    );
    var jsonData = response.data;
    return jsonData;
  }

  getCartProducts() async {
    Response response = await dio.get(
        'https://elwekala.onrender.com/cart/allProducts',
        data: {"nationalId": getId});

    try {
      if (response.statusCode == 200) {
        var jsonData = response.data;
        List allProducts = jsonData["products"];
        List<CartProductModel> allProductsList =
            allProducts.map((e) => CartProductModel.fromJson(e)).toList();

        return allProductsList;
      }
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      }
    }
  }
}

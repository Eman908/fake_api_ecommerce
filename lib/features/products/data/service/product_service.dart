import 'package:dio/dio.dart';
import 'package:products_api/features/products/data/model/products_model.dart';

class ProductService {
  Future<List<ProductsModel>> getProductsData() async {
    final Dio dio = Dio();
    Response response = await dio.get(
      'https://elwekala.onrender.com/product/Laptops',
    );

    try {
      if (response.statusCode == 200) {
        List jsonData = response.data["product"];
        List<ProductsModel> repo =
            jsonData.map((e) => ProductsModel.fromJson(e)).toList();
        return repo;
      } else {
        throw Exception();
      }
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      } else {
        throw Exception();
      }
    }
  }
}

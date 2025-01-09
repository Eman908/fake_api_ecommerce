import 'package:dio/dio.dart';
import 'package:products_api/features/category/data/models/category_model.dart';

class CategoryData {
  Future<List<CategoryModel>> getCategoryData(
      {required String endPoint}) async {
    Dio dio = Dio();
    Response response = await dio.get(
      'https://fakestoreapi.com/products/category/$endPoint',
    );
    List jsonData = response.data;
    if (response.statusCode == 200) {
      List<CategoryModel> repo =
          jsonData.map((e) => CategoryModel.fromJson(e)).toList();
      return repo;
    } else {
      throw Exception('sorry');
    }
  }
}

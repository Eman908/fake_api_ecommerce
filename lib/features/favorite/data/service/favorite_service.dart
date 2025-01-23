import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:products_api/core/widgets/value.dart';
import 'package:products_api/features/favorite/data/model/favorite_model.dart';

class FavoriteService {
  final Dio dio = Dio();
  addToFavoriteService({required String productId}) async {
    Response response = await dio.post('https://elwekala.onrender.com/favorite',
        data: {"nationalId": getId, "productId": productId});
    var jsonData = response.data;
    log(jsonData.toString());
    return jsonData;
  }

  getFavoriteProducts() async {
    Response response = await dio.get('https://elwekala.onrender.com/favorite',
        data: {"nationalId": getId});
    try {
      List jsonData = response.data["favoriteProducts"];
      if (response.statusCode == 200) {
        List<FavoriteModel> favList =
            jsonData.map((e) => FavoriteModel.fromJson(e)).toList();
        log(favList.toString());
        return favList;
      }
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      }
    }
  }

  deleteFavorite({required String productId}) async {
    Response response = await dio.delete(
        'https://elwekala.onrender.com/favorite',
        data: {"nationalId": getId, "productId": productId});
    var jsonData = response.data;
    return jsonData;
  }
}

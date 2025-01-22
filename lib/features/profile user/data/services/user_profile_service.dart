import 'package:dio/dio.dart';
import 'package:products_api/features/auth_login/data/model/login_info_list.dart';
import 'package:products_api/features/profile%20user/data/models/user_profile_model.dart';

var getToken = CashToken.shared!.get("token");

class UserProfileService {
  Future<UserProfileModelData> getUserProfileData() async {
    final Dio dio = Dio();
    var response = await dio.post(
      'https://elwekala.onrender.com/user/profile',
      data: {"token": getToken},
    );

    try {
      Map<String, dynamic> jsonData = response.data;
      var user = UserProfileModelData.fromJson(jsonData);
      return user;
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      }
    }
    throw Exception();
  }
}

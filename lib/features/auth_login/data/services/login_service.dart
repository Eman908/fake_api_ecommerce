import 'package:dio/dio.dart';

class LoginAuth {
  getLoginAuthData({required email, required password}) async {
    final Dio dio = Dio();
    Response response = await dio.post(
        'https://elwekala.onrender.com/user/login',
        data: {"email": email, "password": password});
    try {
      var loginJsonData = response.data;
      print(loginJsonData);
      return loginJsonData;
    } on DioException catch (e) {
      if (e.response != null) {
        print(e.response!.data);
        return e.response!.data;
      }
    }
  }
}

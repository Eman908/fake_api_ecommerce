import 'package:dio/dio.dart';
import 'package:products_api/features/auth_login/data/model/login_info_list.dart';

class LoginAuth {
  getLoginAuthData({required email, required password}) async {
    final Dio dio = Dio();
    Response response = await dio.post(
        'https://elwekala.onrender.com/user/login',
        data: {"email": email, "password": password});
    try {
      var loginJsonData = response.data;

      var newToken = loginJsonData["user"]["token"];
      var nationalId = loginJsonData["user"]["nationalId"];

      await CashToken.shared!.setString("nID", nationalId);
      await CashToken.shared!.setString("token", newToken);

      return loginJsonData;
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      }
    }
  }
}

import 'package:dio/dio.dart';

class AuthData {
  getAuthPostData(
      {required name,
      required email,
      required phone,
      required nationalId,
      required gender,
      required password,
      required token,
      required profileImage}) async {
    Dio dio = Dio();
    Response response =
        await dio.post('https://elwekala.onrender.com/user/register', data: {
      "name": name,
      "email": email,
      "phone": phone,
      "nationalId": nationalId,
      "gender": gender,
      "password": password,
      "token": token,
      "profileImage": profileImage
    });
    try {
      var authJsonData = response.data;
      print(authJsonData["message"]);
      return authJsonData;
    } on DioException catch (e) {
      if (e.response != null) {
        print(e.response!.data["message"]);
        var failuer = e.response!.data;
        return failuer;
      }
    }
  }
}

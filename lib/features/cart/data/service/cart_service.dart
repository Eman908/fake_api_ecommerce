import 'package:dio/dio.dart';

class CartService {
  gerCartAdd() async {
    final Dio dio = Dio();
    Response response =
        await dio.post('https://elwekala.onrender.com/cart/add', data: {
      "nationalId": "37776456788746",
      "productId": "64666d3a91c71d884185b774",
      "quantity": "1"
    });
    var jsonData = response.data;
    print("___________________________________________________");
    print(jsonData);
    print("___________________________________________________");
    return jsonData;
  }
}

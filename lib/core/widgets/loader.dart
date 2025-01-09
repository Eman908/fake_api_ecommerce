import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products_api/core/constants/app_color.dart';

SpinKitThreeBounce loader() {
  return const SpinKitThreeBounce(
    color: AppColor.colorBlue,
    size: 100.0,
  );
}
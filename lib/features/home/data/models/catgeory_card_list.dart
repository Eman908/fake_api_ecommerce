// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:products_api/core/constants/app_color.dart';
// import 'package:products_api/core/constants/app_string.dart';
// import 'package:products_api/features/category/view/screen/category_screen.dart';
// import 'package:products_api/features/home/data/models/category_card_model.dart';

// List<CategoryCardModel> categoryList(BuildContext context) {
//   return [
//     CategoryCardModel(
//       color: AppColor.colorPink,
//       icon: FontAwesomeIcons.plug,
//       title: AppString.electro,
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => const CategoryScreen(
//               endPoint: AppString.electroEP,
//               title: AppString.electro,
//             ),
//           ),
//         );
//       },
//     ),
//     CategoryCardModel(
//       color: AppColor.colorPurple,
//       icon: FontAwesomeIcons.solidGem,
//       title: AppString.jewl,
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => const CategoryScreen(
//               endPoint: AppString.jewlEP,
//               title: AppString.jewl,
//             ),
//           ),
//         );
//       },
//     ),
//     CategoryCardModel(
//       color: AppColor.colorBlue,
//       icon: FontAwesomeIcons.userTie,
//       title: AppString.menCloth,
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => const CategoryScreen(
//               endPoint: AppString.menClothEP,
//               title: AppString.menCloth,
//             ),
//           ),
//         );
//       },
//     ),
//     CategoryCardModel(
//       color: AppColor.colorGreen,
//       icon: FontAwesomeIcons.shirt,
//       title: AppString.womenCloth,
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => const CategoryScreen(
//               endPoint: AppString.womenClothEP,
//               title: AppString.womenCloth,
//             ),
//           ),
//         );
//       },
//     ),
//   ];
// }

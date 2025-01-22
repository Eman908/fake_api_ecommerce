// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:products_api/core/widgets/app_bar.dart';
// import 'package:products_api/core/widgets/drawer.dart';
// import 'package:products_api/core/widgets/loader.dart';
// import 'package:products_api/features/category/cubit/category_cubit.dart';
// import 'package:products_api/features/category/cubit/category_state.dart';
// import 'package:products_api/features/category/view/widgets/success_widget.dart';
// import 'package:products_api/features/details/view/screen/details_screen.dart';

// class CategoryScreen extends StatelessWidget {
//   const CategoryScreen(
//       {required this.endPoint, super.key, required this.title});
//   final String endPoint;
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           CategoryCubit()..getCategoryDataCubit(endPoint: endPoint),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: mainAppBar(title: title, isLeading: true),
//         drawer: const Drawer(
//           child: MainDrawer(),
//         ),
//         body: BlocBuilder<CategoryCubit, CategoryState>(
//           builder: (context, state) {
//             if (state is SuccessState) {
//               return ListView.builder(
//                 itemCount: state.categoryModel.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) {
//                         return DetailsScreen(
//                             categoryModel: state.categoryModel[index]);
//                       }));
//                     },
//                     child: SuccessWidget(
//                       categoryModel: state.categoryModel[index],
//                     ),
//                   );
//                 },
//               );
//             } else if (state is FaluierState) {
//               return Text(state.error);
//             } else {
//               return insideLoader();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

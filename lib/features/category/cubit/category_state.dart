import 'package:products_api/features/category/data/models/category_model.dart';

sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class SuccessState extends CategoryState {
  final List<CategoryModel> categoryModel;
  SuccessState({required this.categoryModel});
}

final class FaluierState extends CategoryState {
  final String error;
  FaluierState({required this.error});
}

final class LoadingState extends CategoryState {}

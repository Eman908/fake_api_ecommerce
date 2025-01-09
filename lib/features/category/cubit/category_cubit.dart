import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/category/cubit/category_state.dart';
import 'package:products_api/features/category/data/services/category_service.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
  CategoryData categoryData = CategoryData();

  getCategoryDataCubit({required String endPoint}) async {
    emit(LoadingState());
    var success = await categoryData.getCategoryData(endPoint: endPoint);
    emit(SuccessState(categoryModel: success));
  }
}

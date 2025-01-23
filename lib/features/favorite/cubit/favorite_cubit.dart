import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/favorite/cubit/favorite_state.dart';
import 'package:products_api/features/favorite/data/service/favorite_service.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  static FavoriteCubit get(context) => BlocProvider.of(context);
  FavoriteService favoriteService = FavoriteService();

  addToFavoriteCubit({required String productId}) async {
    emit(FavoriteLoading());
    await favoriteService.addToFavoriteService(productId: productId);
    emit(FavoriteSuccess());
    getAllFav();
  }

  getAllFav() async {
    emit(FavoriteLoading());
    var success = await favoriteService.getFavoriteProducts();
    emit(FavoriteScreenSuccess(favData: success));
  }

  deleteFavCubit({required String productId}) async {
    emit(FavoriteLoading());
    await favoriteService.deleteFavorite(productId: productId);
    emit(FavoriteDelete());
    getAllFav();
  }
}

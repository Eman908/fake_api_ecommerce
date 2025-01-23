import 'package:products_api/features/favorite/data/model/favorite_model.dart';

sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteSuccess extends FavoriteState {}

final class FavoriteLoading extends FavoriteState {}

final class FavoriteScreenSuccess extends FavoriteState {
  List<FavoriteModel> favData;
  FavoriteScreenSuccess({required this.favData});
}

final class FavoriteDelete extends FavoriteState {}

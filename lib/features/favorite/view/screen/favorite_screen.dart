import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/auth/view/widget/app_bar_form.dart';
import 'package:products_api/features/favorite/cubit/favorite_cubit.dart';
import 'package:products_api/features/favorite/cubit/favorite_state.dart';
import 'package:products_api/features/favorite/view/widgets/favorite_success.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarForm(title: "My Favorites", isLeading: true),
      body: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          if (state is FavoriteScreenSuccess) {
            return ListView.builder(
              itemCount: state.favData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: FavoriteSuccessscreen(
                    fav: state.favData[index],
                    onPressed: () {
                      FavoriteCubit.get(context).deleteFavCubit(
                        productId: state.favData[index].productId,
                      );
                    },
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

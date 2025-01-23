import 'package:flutter/material.dart';
import 'package:products_api/features/favorite/data/model/favorite_model.dart';

class FavoriteSuccessscreen extends StatelessWidget {
  const FavoriteSuccessscreen(
      {super.key, required this.fav, required this.onPressed});
  final FavoriteModel fav;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.delete_forever,
          size: 28,
          color: Colors.redAccent,
        ),
      ),
      leading: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(fav.image),
          ),
        ),
      ),
      title: Text(
        fav.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Price : ${fav.price} ",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

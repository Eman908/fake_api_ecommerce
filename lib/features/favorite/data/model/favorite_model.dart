class FavoriteModel {
  final String name;
  final String description;
  final String image;
  final num price;
  final num countInStock;
  final String productId;

  FavoriteModel(
      {required this.countInStock,
      required this.description,
      required this.image,
      required this.name,
      required this.price,
      required this.productId});

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    return FavoriteModel(
        countInStock: json["countInStock"],
        description: json["description"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        productId: json["_id"]);
  }
}

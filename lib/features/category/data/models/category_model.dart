import 'package:products_api/features/category/data/models/rating_model.dart';

class CategoryModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final RatingModel ratingModel;

  CategoryModel(
      {required this.category,
      required this.description,
      required this.id,
      required this.image,
      required this.price,
      required this.title,
      required this.ratingModel});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        category: json["category"],
        description: json["description"],
        id: json["id"],
        image: json["image"],
        price: json["price"],
        title: json["title"],
        ratingModel: RatingModel.fromJson(json["rating"]));
  }
}

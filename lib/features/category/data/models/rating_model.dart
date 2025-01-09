class RatingModel {
  final num rate;
  final num count;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(count: json["count"], rate: json["rate"]);
  }
}

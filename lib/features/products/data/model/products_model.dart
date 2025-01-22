class ProductsModel {
  final String productId;
  final String productStatus;
  final String productCategory;
  final String productName;
  final num productPrice;
  final String productImage;
  final String? producrDescription;

  ProductsModel(
    this.producrDescription, {
    required this.productCategory,
    required this.productId,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productStatus,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      json["description"],
      productCategory: json["category"],
      productId: json["_id"],
      productImage: json["image"],
      productName: json["name"],
      productPrice: json["price"],
      productStatus: json["status"],
    );
  }
}

// "_id": "64666d3a91c71d884185b774",
// "status": "New",
// "category": "Laptops",
// "name": " Dell XPS 13",
// "price": 30.819,
// "description": "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
// "image": "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
// "images": [
// "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
// "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
// "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png"
// ],
// "company": "Dell",
// "countInStock": 8,
// "__v": 0,
// "sales": 9

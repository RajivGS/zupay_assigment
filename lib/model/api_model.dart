import 'dart:convert';

List<ApiDataModel> apiDataModelFromJson(String str) => List<ApiDataModel>.from(
    json.decode(str).map((x) => ApiDataModel.fromJson(x)));

String apiDataModelToJson(List<ApiDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiDataModel {
  ApiDataModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  int id;
  String title;
  double price;
  String description;
  Category category;
  String image;
  Rating rating;

  factory ApiDataModel.fromJson(Map<dynamic, dynamic> json) => ApiDataModel(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating.toJson(),
      };
}

// ignore: constant_identifier_names
enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  double rate;
  int count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map, this.reverseMap);
}

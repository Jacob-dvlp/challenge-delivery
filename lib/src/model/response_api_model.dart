import 'dart:convert';

List<ResponseApi> responseApiFromJson(String str) => List<ResponseApi>.from(
    json.decode(str).map((x) => ResponseApi.fromJson(x)));

String responseApiToJson(List<ResponseApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseApi {
  ResponseApi({
    this.id,
    this.name,
    this.price,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
  });

  int? id;
  String? name;
  String? price;

  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  List<dynamic>? tagList;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;

  factory ResponseApi.fromJson(Map<String, dynamic> json) => ResponseApi(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        imageLink: json["image_link"],
        productLink: json["product_link"],
        websiteLink: json["website_link"],
        description: json["description"],
        category: json["category"],
        productType: json["product_type"],
        tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productApiUrl: json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "image_link": imageLink,
        "product_link": productLink,
        "website_link": websiteLink,
        "description": description,
        "rating": rating,
        "category": category,
        "product_type": productType,
        "tag_list": List<dynamic>.from(tagList!.map((x) => x)),
        "product_api_url": productApiUrl,
        "api_featured_image": apiFeaturedImage,
      };
}



import 'package:shamo_app/models/category_model.dart';
import 'package:shamo_app/models/gallery_model.dart';

class ProductModel {
  int id;
  String name;
  double price;
  String description;
  String? tags;
  CategoryModel category;
  DateTime createdAt;
  DateTime updatedAt;
  List<GalleryModel> galleries;

  ProductModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      this.tags,
      required this.category,
      required this.createdAt,
      required this.updatedAt,
      required this.galleries});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'],
      name: json['name'],
      price: double.parse(json['price'].toString()),
      description: json['description'],
      tags: json['tags'],
      category: CategoryModel.fromJson(json['category']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      galleries: json['galleries']
          .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
          .toList());

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList()
    };
  }
}

class UninitializedProductModel extends ProductModel {
  UninitializedProductModel(
      {required super.id,
      required super.name,
      required super.price,
      required super.description,
      required super.category,
      required super.createdAt,
      required super.updatedAt,
      required super.galleries});
}

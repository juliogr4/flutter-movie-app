import 'package:flutter/material.dart';

class CategoryModel {
  String assetPath;
  Color color;
  String name;

  CategoryModel({
    required this.assetPath,
    required this.color,
    required this.name,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [
      CategoryModel(
        name: 'Horror',
        assetPath: 'assets/icons/adventure.svg',
        color: const Color.fromARGB(255, 226, 226, 226),
      ),
      CategoryModel(
        name: 'Fiction',
        assetPath: 'assets/icons/fiction.svg',
        color: const Color(0xffEEA4CE),
      ),
      CategoryModel(
        name: 'Comedy',
        assetPath: 'assets/icons/comedy.svg',
        color: const Color(0xff9DCEFF),
      ),
      CategoryModel(
        name: 'Action',
        assetPath: 'assets/icons/action.svg',
        color: const Color.fromARGB(255, 235, 238, 164),
      ),
    ];

    return categories;
  }
}

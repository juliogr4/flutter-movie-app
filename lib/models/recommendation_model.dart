import 'package:flutter/material.dart';

class RecommendationModel {
  String assetPath;
  String name;
  String genre;
  String duration;
  String year;
  Color color;
  bool isViewSelected;

  RecommendationModel({
    required this.assetPath,
    required this.name,
    required this.genre,
    required this.duration,
    required this.year,
    required this.color,
    required this.isViewSelected,
  });

  static List<RecommendationModel> getDiets() {
    List<RecommendationModel> diets = [
      RecommendationModel(
        name: 'Harry Potter',
        assetPath: 'assets/icons/harry-potter.svg',
        genre: 'Fiction',
        duration: '120 min',
        year: '2005',
        isViewSelected: true,
        color: const Color(0xffEEA4CE),
      ),
      RecommendationModel(
        name: 'Frankenstein',
        assetPath: 'assets/icons/frankenstein.svg',
        genre: 'Horror',
        duration: '90 min',
        year: '2003',
        isViewSelected: false,
        color: const Color.fromARGB(255, 226, 226, 226),
      ),
    ];
    return diets;
  }
}

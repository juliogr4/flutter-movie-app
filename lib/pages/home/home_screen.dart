import 'package:movie/models/recommendation_model.dart';
import 'package:movie/models/popular_model.dart';
import 'package:movie/pages/home/components/app_bar.dart';
import 'package:movie/pages/home/components/category_section.dart';
import 'package:movie/pages/home/components/recommendation_section.dart';
import 'package:movie/pages/home/components/popular_section.dart';
import 'package:movie/pages/home/components/search.dart';
import 'package:flutter/material.dart';
import 'package:movie/models/category_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<CategoryModel> categories = [];
  List<RecommendationModel> diets = [];
  List<PopularModel> popularDiets = [];

  void getInitialData() {
    categories = CategoryModel.getCategories();
    diets = RecommendationModel.getDiets();
    popularDiets = PopularModel.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    // startup data
    getInitialData();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: SafeArea(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              // space
              const SizedBox(height: 10),

              // search
              const Search(),

              // space
              const SizedBox(height: 30),

              // category
              CategorySection(categories: categories),

              // space
              const SizedBox(height: 30),

              // diet
              DietSection(diets: diets),

              // space
              const SizedBox(height: 30),

              // popular
              PopularSection(popularDiets: popularDiets),
            ],
          ),
        ),
      ),
    );
  }
}

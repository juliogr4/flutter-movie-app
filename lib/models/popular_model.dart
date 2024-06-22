class PopularModel {
  String assetPath;
  String name;
  String genre;
  String duration;
  String year;
  bool isViewSelected;

  PopularModel({
    required this.assetPath,
    required this.name,
    required this.genre,
    required this.duration,
    required this.year,
    required this.isViewSelected,
  });

  static List<PopularModel> getPopular() {
    List<PopularModel> popularDiets = [
      PopularModel(
        name: 'Harry Potter',
        assetPath: 'assets/icons/harry-potter.svg',
        genre: 'Fiction',
        duration: '120 min',
        year: '2005',
        isViewSelected: true,
      ),
      PopularModel(
        name: 'Frankenstein',
        assetPath: 'assets/icons/frankenstein.svg',
        genre: 'Horror',
        duration: '90 min',
        year: '2003',
        isViewSelected: false,
      )
    ];

    return popularDiets;
  }
}

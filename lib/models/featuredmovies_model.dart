class FeaturedMoviesModel {
  int id;
  String name;
  String genre;
  String imageUrl;
  double rating;

  FeaturedMoviesModel({
    required this.id,
    required this.name,
    required this.genre,
    required this.imageUrl,
    this.rating = 0.0,
  });
}

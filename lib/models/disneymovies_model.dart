class DisneyMoviesModel {
  int id;
  String name;
  String genre;
  String imageUrl;
  double rating;

  DisneyMoviesModel({
    required this.id,
    required this.name,
    required this.genre,
    required this.imageUrl,
    this.rating = 0.0,
  });
}

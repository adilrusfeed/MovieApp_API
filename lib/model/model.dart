class MovieModel {
  String title;
  String backdropPath;
  String language;
  String overview;
  String posterPath;
  String releaseDate;
  double averageVote;
  double voteCount;

  MovieModel(
      {required this.title,
      required this.backdropPath,
      required this.language,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.averageVote,
      required this.voteCount});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      title: json["title"],
      backdropPath: json["backdrop_path"],
      language: json["language"],
      overview: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: json["release_date"],
      averageVote: json["vote_average"],
      voteCount: json["vote_count"]);

  Map<String, dynamic> toJson() => {};
}

class ApiConstants {
  static const apiKey = '3c20bf0bac3997023d6185084b76a613';
  static const imagePath = 'https://image.tmdb.org/t/p/w500';
  static const castImagePath =
      'https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEE2t2.jpg  ';
  static const trending =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${ApiConstants.apiKey}';
  static const topRated =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${ApiConstants.apiKey}';
  static const upComing =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${ApiConstants.apiKey}';
  static const popular =
      'https://api.themoviedb.org/3/movie/popular?api_key=${ApiConstants.apiKey}';
  static const tvPopular =
      'https://api.themoviedb.org/3/tv/popular?api_key=${ApiConstants.apiKey}';
  static const tvTopRated =
      'https://api.themoviedb.org/3/tv/top_rated?api_key=${ApiConstants.apiKey}';
  static const tvOntheAir =
      'https://api.themoviedb.org/3/tv/popular?api_key=${ApiConstants.apiKey}';

  static const castPoint = "/credits?";
}

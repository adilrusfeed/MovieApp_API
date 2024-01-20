import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:movie_app/model/model.dart';
import 'package:movie_app/view/widgets/constants.dart';

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apikey}';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apikey}';

  static const _upComingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apikey}';

  Future<List<Movies>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;

      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<List<Movies>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;

      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<List<Movies>> getUpComingMovies() async {
    final response = await http.get(Uri.parse(_upComingUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;

      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}

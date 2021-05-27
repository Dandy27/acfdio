import 'package:flutter_application_1/models/movies.dart';

abstract class MoviesRepository {
  Future<Movies> findPopularMovies();
  Future<Movies> findTopRatedMovies();
}
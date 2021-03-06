import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/excepitions/repository_exception.dart';
import 'package:flutter_application_1/models/movies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import './movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<Movies> findPopularMovies() async {
    try {
      final apiKey = env['apiKey'] ?? '';

      final dio = Dio();
      final result = await dio.get('https://api.themoviedb.org/3/movie/550?',
          queryParameters: {'api_key': apiKey, 'language': 'pt-BR'});
      return Movies.fromMap(result.data);
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw RepositoryException();
    }
  }

  @override
  Future<Movies> findTopRatedMovies() {
    // TODO: implement findTopRatedMovies
    throw UnimplementedError();
  }
}

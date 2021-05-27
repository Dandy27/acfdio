import 'package:flutter_application_1/repositories/movies_repository.dart';
import 'package:flutter_application_1/repositories/movies_repository_impl.dart';
import 'package:get/get.dart';
import './movies_controller.dart';

class MoviesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoviesRepository>(() => MoviesRepositoryImpl());

    Get.put(MoviesController());
  }
}

import 'dart:ffi';

import 'package:flutter_application_1/repositories/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController {
  String type = Get.arguments;

  @override
  void onInit() async {
    await findMovies();
    super.onInit();
  }

  Future<void> findMovies() {
    MoviesRepository repository = Get.find();
    
  }
}

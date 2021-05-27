import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/home/home_bindings.dart';
import 'package:flutter_application_1/modules/home/home_page.dart';
import 'package:flutter_application_1/modules/movies/movies_bindings.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'modules/movies/movies_page.dart';

void main() {
  load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindings(),
        ),
        GetPage(
          name: '/movies',
          page: () => MoviesPage(),
          binding: MoviesBindings(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/home/home_bindings.dart';
import 'package:flutter_application_1/modules/home/home_page.dart';
import 'package:get/get.dart';

void main() {
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
      ],
    );
  }
}

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.people_alt_outlined),
              label: const Text('Populares'),
            ),
          
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.people_alt_outlined),
              label: const Text('Mais Votados'),
            ),
          ],
        ),
      ),
    );
  }
}

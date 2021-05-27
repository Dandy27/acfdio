import 'package:flutter_application_1/repositories/movies_repository_impl.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './movies_controller.dart';

class MoviesPage extends GetView<MoviesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Total de Filmes 0'),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(children: [
                Wrap(spacing: 10, alignment: WrapAlignment.center, children: [
                  CardAndRodape(
                    text: 'Filme do Batman',
                    textbody: 'Descrição do filme',
                    image:
                        'https://vandal-us.s3.amazonaws.com/spree/products/5a64e81d5edec614a0e26d39/product/open-uri20180926-12-3tkkgd.jpg',
                  ),
                  CardAndRodape(
                    text: 'Filme do Batman',
                    textbody: 'Descrição do filme',
                    image:
                        'https://vandal-us.s3.amazonaws.com/spree/products/5a64e81d5edec614a0e26d39/product/open-uri20180926-12-3tkkgd.jpg',
                  ),
                  CardAndRodape(
                    text: 'Filme do Batman',
                    textbody: 'Descrição do filme',
                    image:
                        'https://vandal-us.s3.amazonaws.com/spree/products/5a64e81d5edec614a0e26d39/product/open-uri20180926-12-3tkkgd.jpg',
                  ),
                  CardAndRodape(
                    text: 'Filme do Batman',
                    textbody: 'Descrição do filme',
                    image:
                        'https://vandal-us.s3.amazonaws.com/spree/products/5a64e81d5edec614a0e26d39/product/open-uri20180926-12-3tkkgd.jpg',
                  ),
                  CardAndRodape(
                    text: 'Filme do Batman',
                    textbody: 'Descrição do filme',
                    image:
                        'https://vandal-us.s3.amazonaws.com/spree/products/5a64e81d5edec614a0e26d39/product/open-uri20180926-12-3tkkgd.jpg',
                  ),
                ])
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class CardAndRodape extends StatelessWidget {
  CardAndRodape(
      {required this.text, required this.image, required this.textbody});

  String text;
  String textbody;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: 150,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                )),
            Container(
              constraints: const BoxConstraints(maxWidth: 150),
              child: Text(
                text,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 150),
              child: Text(
                textbody,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ],
        ));
  }
}

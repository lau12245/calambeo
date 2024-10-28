import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class Carouselimg extends StatelessWidget {
  final List<String> imgList = [
    'assets/img/img3.jpeg',
    'assets/img/img9.jpeg',
    'assets/img/img11.jpeg',
    'assets/img/img14.jpeg',
    'assets/img/img4.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Carrusel como fondo
        Container(
          width: double.infinity, // Ocupa todo el ancho
          height: MediaQuery.of(context).size.height *
              0.8, // Ajusta la altura según sea necesario
          child: CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.8,
              autoPlay: true,
              enlargeCenterPage: false,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
            ),
            items: imgList
                .map((item) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: double
                              .infinity, // Asegura que la imagen ocupa todo el ancho
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        // Contenido superpuesto
        Positioned(
          top: 200,
          left: 20,
          right: 20,
          child: Column(
            children: [
              Text(
                'Bienvenidos\ncalambeo\nambala',
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.green,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
              ),
              // Agrega más widgets si lo necesitas
            ],
          ),
        ),
      ],
    );
  }
}

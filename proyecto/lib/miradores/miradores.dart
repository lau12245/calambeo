import 'package:flutter/material.dart';

class Miradores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'miradores',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Número de cuadros por fila
          crossAxisSpacing: 10, // Espacio entre columnas
          mainAxisSpacing: 10, // Espacio entre filas
          children: [
            buildGridItemWithDescription(
                context,
                'assets/img/img7.jpeg',
                'mirador tesorito',
                'Este es el mirador 1. Aquí puedes disfrutar de vistas panorámicas espectaculares, este mirador cuenta con una grandiosa vista de ibague tolima, tenemos mas de un sitio intagrameable, al igual contamos con servicio de restaurante, puedes venir a disfrutar de nuestras grandiosas viztas y compartir en familia.'), // Primer cuadro
            buildGridItem(context, 'assets/img/img2.jpeg', 'Página 2',
                Pagina2()), // Segundo cuadro
            buildGridItem(context, 'assets/img/img3.jpeg', 'Página 3',
                Pagina3()), // Tercer cuadro
            buildGridItemWithDescription(
                context,
                'assets/img/img7.jpeg',
                'paraiso escondido',
                'Este es el mirador 1. Aquí puedes disfrutar de vistas panorámicas espectaculares, este mirador cuenta con una grandiosa vista de ibague tolima, tenemos mas de un sitio intagrameable, al igual contamos con servicio de restaurante, puedes venir a disfrutar de nuestras grandiosas viztas y compartir en familia.'),

            buildGridItemWithDescription(
                context,
                'assets/img/img7.jpeg',
                'paraiso escondido',
                'Este es el mirador 1. Aquí puedes disfrutar de vistas panorámicas espectaculares, este mirador cuenta con una grandiosa vista de ibague tolima, tenemos mas de un sitio intagrameable, al igual contamos con servicio de restaurante, puedes venir a disfrutar de nuestras grandiosas viztas y compartir en familia.'),

            buildGridItem(context, 'assets/img/img3.jpeg', 'Página 3',
                Pagina1()), // Tercer cuadro
          ],
        ),
      ),
    );
  }

  // Cuadro del primer mirador con descripción
  Widget buildGridItemWithDescription(BuildContext context, String imagePath,
      String title, String description) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 60), // Espacio entre el título y la descripción
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 20, 19, 19),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                    height: 50), // Espacio entre el título y la descripción
                Text(
                  description,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 10, 10, 10),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Función para construir cada cuadro
  Widget buildGridItem(
      BuildContext context, String imagePath, String buttonText, Widget page) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath), // Imagen de fondo
          fit: BoxFit.cover, // Ajuste de la imagen
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Botón al final del cuadro
        children: [
          ElevatedButton(
            onPressed: () {
              // Navega a la otra página
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
            },
            child: Text(buttonText), // Texto del botón
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
                  .withOpacity(0.7), // Fondo del botón semitransparente
            ),
          ),
        ],
      ),
    );
  }
}

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 2')),
      body: Center(child: Text('Contenido de la Página 2')),
    );
  }
}

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 2')),
      body: Center(child: Text('Contenido de la Página 2')),
    );
  }
}

class Pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 3')),
      body: Center(child: Text('Contenido de la Página 3')),
    );
  }
}

class Pagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 4')),
      body: Center(child: Text('Contenido de la Página 4')),
    );
  }
}

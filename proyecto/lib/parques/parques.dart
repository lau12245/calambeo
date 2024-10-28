import 'package:flutter/material.dart';

class Parques extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
        backgroundColor: const Color.fromARGB(255, 252, 250, 250),
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
                'assets/img/meraki.jpg', // Cambia la ruta de la imagen
                'Parque Meraki',
                'El Parque Meraki es un lugar encantador donde puedes relajarte y disfrutar de la naturaleza, restaurante y una atracción. Ideal para compartir tiempo en familia con una caminata tranquila .'), // Primer cuadro
            buildGridItem(context, 'assets/img/img3.jpeg', 'Jardín Botánico',
                PaginaJardinBotanico()), // Segundo cuadro
            buildGridItem(context, 'assets/img/img3.jpeg', 'Página 3',
                Pagina3()), // Tercer cuadro
            buildGridItemWithDescription(
                context,
                'assets/img/meraki.jpg', // Cambia la ruta de la imagen
                'Parque Meraki',
                'El Parque Meraki es un lugar encantador donde puedes relajarte y disfrutar de la naturaleza, restaurante y una atracción. Ideal para compartir tiempo en familia con una caminata tranquila .'), // Primer cuadro // Cuarto cuadro
          ],
        ),
      ),
    );
  }

  // Cuadro del primer parque con descripción
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

class PaginaJardinBotanico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jardín Botánico')),
      body: Center(child: Text('Contenido del Jardín Botánico')),
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

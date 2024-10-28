import 'package:flutter/material.dart';
import 'package:proyecto/reservas/servicios.dart';

// Página principal de lista de alojamientos
class reservas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('323 alojamientos'),
      ),
      body: Row(
        children: [
          // Primera columna: Lista de alojamientos
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                buildAccommodationCard(
                  context,
                  'Inout',
                  '7.6',
                  'A 7.77 km de tu ubicación actual',
                  '€29',
                ),
                buildAccommodationCard(
                  context,
                  'Safestay Barcelona Gothic',
                  '7.6',
                  'A 6.3 km de tu ubicación actual',
                  '€29',
                  discount: '16%',
                ),
                buildAccommodationCard(
                  context,
                  'Mellow Barcelona',
                  '5.6',
                  'A 2.22 km de tu ubicación actual',
                  '€30',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Función para crear la tarjeta de la lista de alojamientos
  Widget buildAccommodationCard(BuildContext context, String name,
      String rating, String distance, String price,
      {String? discount}) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.hotel),
        title: Text('$name\nRating: $rating'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(distance),
            if (discount != null)
              Text('Ha bajado el precio a última hora: $discount',
                  style: TextStyle(color: Colors.green)),
          ],
        ),
        trailing: Text(price),
        onTap: () {
          // Al hacer click, redirige a la segunda página (Servicios incluidos)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ServicesPage()),
          );
        },
      ),
    );
  }
}

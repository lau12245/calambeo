// Segunda página: Servicios incluidos
import 'package:flutter/material.dart';
import 'package:proyecto/reservas/reservas.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios incluidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Estos son los servicios incluidos con tu reserva:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            buildServiceItem('WiFi Gratis', Icons.wifi),
            buildServiceItem('Desayuno incluido', Icons.breakfast_dining),
            buildServiceItem('Piscina', Icons.pool),
            buildServiceItem('Gimnasio', Icons.fitness_center),
            buildServiceItem('Transporte al aeropuerto', Icons.airport_shuttle),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                child: Text('Continuar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función para crear un elemento de servicio con ícono
  Widget buildServiceItem(String serviceName, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          SizedBox(width: 10),
          Text(serviceName, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

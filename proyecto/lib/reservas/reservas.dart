// Tercera página: Formulario de búsqueda
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campo de búsqueda de ubicación
            TextField(
              decoration: InputDecoration(
                labelText: 'Busca por destino/nombre del alojamiento',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Campos de entrada y salida
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Entrada',
                      suffixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Salida',
                      suffixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Opción de estancia
            Row(
              children: [
                Checkbox(value: true, onChanged: (bool? value) {}),
                Text('Estancia de 1 noche'),
              ],
            ),
            SizedBox(height: 10),

            // Campos de habitación, adultos y niños
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Habitación',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Adultos',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Niños',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Opción de viaje por trabajo
            Text('¿Viajas por trabajo?'),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Sí'),
                    leading: Radio(
                        value: true,
                        groupValue: true,
                        onChanged: (bool? value) {}),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('No'),
                    leading: Radio(
                        value: false,
                        groupValue: true,
                        onChanged: (bool? value) {}),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Botón de búsqueda
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción al hacer clic en el botón de búsqueda
                },
                child: Text('reservar'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

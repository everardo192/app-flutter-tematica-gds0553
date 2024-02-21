import 'package:flutter/material.dart';

class PageThree2 extends StatelessWidget {
  const PageThree2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes De Los Campeones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/sevilla.jpg', // Ruta de la imagen
              width: 250, // Ancho de la imagen
              height: 200, // Alto de la imagen
            ),
            const SizedBox(height: 20),
            const Text(
              'Esta es la página 4',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Puedes agregar cualquier texto o widgets aquí según tus necesidades.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  //
  const PageOne(
      {super.key}); // La clave (key) es un identificador único que Flutter utiliza internamente para identificar widgets de manera eficiente.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/logotipo.jpg', // Ruta de la imagen
            width: 250, // Ancho de la imagen
            height: 200, // Alto de la imagen
          ),
          const SizedBox(height: 20), // Espacio entre la imagen y los textos
          const Text(
            'Everardo Guadalupe Torres Tovar',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 33, 164, 197),
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),

          const Text(
            'GDS0553',
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            margin:
                const EdgeInsets.all(20.0), // Margen alrededor del contenedor
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.grey), // Borde para visualización
            ),
            child: const Text(
              'La Liga Europa de la UEFA, conocida originalmente como Copa de la UEFA, es una de las tres competiciones principales que organiza la Unión de Asociaciones Europeas de Fútbol (UEFA), junto con la Liga de Campeones. Se considera la segunda competición más prestigiosa a nivel europeo, después de la Liga de Campeones',
              textAlign: TextAlign.justify, // Ajustar texto
            ),
          ),
        ],
      ),
    );
  }
}

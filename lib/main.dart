import 'package:flutter/material.dart';
import 'bienvenida.dart';
import 'datos.dart';
import 'campeones.dart';
import 'creditos.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key}); //Constructor

  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MiVentana extends StatelessWidget {
  const MiVentana({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*class MiVentana1 extends StatelessWidget {
  const MiVentana1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PageOne(),
    MyStepper2(),
    PageThree(),
    PageThree2(),
    MiVentana(),
    MiVentana1()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(133, 95, 160, 45),
        appBar: AppBar(
          title: const Text('Aplicacion Flutter Tematica Futbol'),
          backgroundColor: Colors.amber,
        ),
        body: _widgetOptions.elementAt(_selectedIndex), //Define que mostrar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          type: BottomNavigationBarType.fixed,
          //selectedIconTheme: Ic,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Página 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Página 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Página 3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Página 4',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Página 5',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class PageUno extends StatelessWidget {
  //
  const PageUno(
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
            'Flutter',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 20, 92, 71),
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),

          const Text(
            '',
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquet justo nec eleifend interdum. Fusce posuere mi sed ligula interdum vulputate. Integer ut augue vitae enim luctus finibus.',
              textAlign: TextAlign.justify, // Ajustar texto
            ),
          ),
        ],
      ),
    );
  }
}

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proceso de Programación'),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepContinue: () {
          setState(() {
            if (_currentStep < 2) {
              _currentStep++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep--;
            }
          });
        },
        steps: <Step>[
          Step(
            title: const Text('Planificación'),
            content: const Column(
              children: <Widget>[
                Text('Establecer objetivos'),
                Text('Diseñar la arquitectura'),
                Text('Planificar la implementación'),
              ],
            ),
            isActive: _currentStep >= 0,
          ),
          Step(
            title: Text('Codificación'),
            content: Column(
              children: <Widget>[
                Text('Escribir código limpio y modular'),
                Text('Realizar pruebas unitarias'),
                Text('Integrar funcionalidades paso a paso'),
              ],
            ),
            isActive: _currentStep >= 1,
          ),
          Step(
            title: Text('Depuración'),
            content: Column(
              children: <Widget>[
                Text('Identificar y corregir errores'),
                Text('Optimizar el rendimiento'),
                Text('Realizar pruebas de integración'),
              ],
            ),
            isActive: _currentStep >= 2,
          ),
        ],
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});
  //final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de Formulario Simple'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu nombre';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu correo electrónico';
                  }
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageThree1 extends StatelessWidget {
  const PageThree1({super.key});
  //final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de Formulario Simple'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu nombre';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu correo electrónico';
                  }
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageThree2 extends StatelessWidget {
  const PageThree2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imágenes De Los Campeones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Estas son las imágenes de los campeones:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: campeones.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset(
                      campeones[index], // Ruta de la imagen
                      width: 250, // Ancho de la imagen
                      height: 200, // Alto de la imagen
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Lista de rutas de imágenes de campeones
List<String> campeones = [
  'assets/images/sevilla.jpg',
  'assets/images/barcelona.png',
  'assets/images/realmadrid.jpg'
  // Agrega más rutas de imágenes según sea necesario
];

class MiVentana1 extends StatelessWidget {
  const MiVentana1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Este es el contenido de la página 5:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Agrega cualquier texto o widgets que desees aquí.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

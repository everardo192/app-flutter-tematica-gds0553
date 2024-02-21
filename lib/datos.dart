import 'package:flutter/material.dart';

class MyStepper2 extends StatefulWidget {
  const MyStepper2({Key? key}) : super(key: key);

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper2> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historia De La Europa League'),
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
            title: const Text('Historia'),
            content: Column(
              children: <Widget>[
                // Agrega la imagen aquí
                Image.asset(
                  'assets/images/logotipo.jpg', // Ruta de la imagen
                  width: 250, // Ancho de la imagen
                  height: 200, // Alto de la imagen
                ),
                const SizedBox(height: 20),
                Text('La Europa League, antes conocida como Copa de la UEFA, es un torneo de fútbol europeo anual que comenzó en 1971. Involucra a equipos de diferentes ligas en rondas eliminatorias, con clubes de la Liga de Campeones de la UEFA que se unen más tarde. Equipos notables como el Sevilla FC han tenido éxito, y la competición ha ganado importancia a lo largo de los años. La Europa League culmina en una emocionante final que determina al campeón y ofrece la posibilidad de clasificarse para la Liga de Campeones de la UEFA.'),
              ],
            ),
            isActive: _currentStep >= 0,
          ),
          Step(
            title: Text('Datos Importantes'),
            content: Column(
              children: <Widget>[
                Text('La Europa League, conocida originalmente como Copa de la UEFA en el año 1971, se lleva a cabo todos los años y es un emocionante torneo de fútbol que reúne a equipos de diferentes ligas. La competición sigue un formato eliminatorio, en el que también participan clubes de la UEFA Champions League. Entre todos los equipos, el Sevilla FC ha sabido brillar con sus múltiples títulos. Esta competición sirve como una plataforma importante para los equipos más pequeños y eventualmente conduce a un partido final que no sólo determina el campeón final sino que también les ofrece la oportunidad de clasificarse para la prestigiosa Liga de Campeones de la UEFA. A lo largo de su historia, la Europa League ha pasado por diversos cambios en su estructura.'),
              ],
            ),
            isActive: _currentStep >= 1,
          ),
          Step(
            title: Text('Equipos Que Han Ganado La Europa League'),
            content: Column(
              children: <Widget>[
                Text('7 títulos: Sevilla (2006, 2007, 2014, 2015, 2016 y 2020).'),
                Text('3 títulos: Atlético de Madrid (2010, 2012 y 2018), Juventus (1977, 1990 y 1993), Inter de Milán (1991, 1994 y 1998) y Liverpool (1973, 1976 y 2001).'),
                Text('2 títulos: Borussia Mönchengladbach (1975 y 1979), Tottenham (1972 y 1984), Real Madrid (1985 y 1986), Göteborg (1982 y1987), Parma (1995 y 1999), Feyenoord (1974 y 2002), Porto (2003 y 2011) y Eintracht Frankfurt (1980 y 2022)'),
              ],
            ),
            isActive: _currentStep >= 2,
          ),
        ],
      ),
    );
  }
}

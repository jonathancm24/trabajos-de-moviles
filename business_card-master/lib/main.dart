import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final color = const Color.fromARGB(255, 52, 47, 91);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 0: Configuración de color de fondo.
      backgroundColor: color.withOpacity(0.6),
      body: SafeArea(
        child: Column(
          // TODO 1: Alineación vertical.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
            // TODO 2: Separación vertical.
            const SizedBox(height: 20.0),
            const Text(
              'Cheto',
              style: TextStyle(
                // TODO 3: Mejorar estilo del texto.
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                color: Color.fromARGB(255, 49, 17, 233),
              ),
            ),
            // TODO 4: Separación entre los textos.
            const SizedBox(height: 10.0),
            Text(
              'Azombroso Cheto'.toLowerCase(),
              style: TextStyle(
                fontSize: 20.0,
                color: const Color.fromARGB(255, 49, 17, 233).withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 40.0,
              width: 120.0,
              child: Divider(
                color: Colors.deepPurple,
              ),
            ),
            // TODO 5: Uso de infoCard.
            infoCard(icon: Icons.phone, text: '+123 456 789'),
            infoCard(icon: Icons.email, text: 'triki@kittenmail.com'),
            infoCard(icon: Icons.location_on, text: 'Catlandia, Meow Street 42'),
          ],
        ),
      ),
    );
  }

  // TODO 6: Explicación sobre los brackets.
  /// Los corchetes `{}` permiten definir **parámetros nombrados**, que facilitan la lectura y el uso del método
  /// al llamar a los argumentos con su nombre explícito. Esto ayuda a evitar errores cuando hay múltiples parámetros 
  /// opcionales o requeridos en funciones o constructores.
  Widget infoCard({required IconData icon, required String text}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            icon,
            size: 30.0,
            color: color
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

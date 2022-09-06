import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hernan App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hola! Soy Hernán',
            style: TextStyle(fontSize: 50),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    const Text('Gracias!');
                  },
                  icon: const Icon(Icons.adjust)),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Me gusta que me operen la nariz',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

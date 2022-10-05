import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds19 Tooltip',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          textStyle: const TextStyle(fontSize: 10),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          preferBelow: false,
          message: 'Este es un boton para decir Hola',
          child: OutlinedButton(
            onPressed: () {},
            child: const Text('Hola'),
          ),
        ),
      ),
    );
  }
}

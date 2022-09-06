import 'package:flutter/material.dart';
import 'package:ejemplo_rutas_nombradas/widgets/FirstScreen.dart';

void main() => runApp(const RutasApp());

class RutasApp extends StatelessWidget {
  const RutasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: FirstScreen(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
    );
  }
}
